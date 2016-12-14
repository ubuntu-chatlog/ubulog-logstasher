FROM logstash:alpine

RUN mkdir -p /var/lib/ubuntu-chatlogs /usr/share/ubuntu-chatlogs
WORKDIR /var/lib/ubuntu-chatlogs
COPY . /usr/share/ubuntu-chatlogs


CMD [ "-f", "/usr/share/ubuntu-chatlogs/ubuntu-log-archive.conf" ]