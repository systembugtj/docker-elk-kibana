FROM kibana:5

RUN apt-get update && apt-get install -y netcat bzip2

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
COPY ./config/kibana.yml /opt/kibana/config/kibana.yml
EXPOSE 5601

CMD ["/tmp/entrypoint.sh"]


