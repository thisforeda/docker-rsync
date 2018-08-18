FROM alpine:latest

COPY entry /entry

RUN apk add rsync && chmod +x /entry

EXPOSE 873

ENTRYPOINT ["/entry"]

CMD ["/usr/bin/rsync", "--config", "/etc/rsyncd.conf", "--daemon", "--no-detach"]
