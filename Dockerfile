FROM alpine
MAINTAINER Ken Chen <ken.chen@simagix.com>
ADD ftdc-linux-x64 /simple_json
RUN addgroup -S simagix && adduser -S simagix -G simagix
USER simagix
WORKDIR /home/simagix
RUN mkdir diagnostic.data
CMD ["/simple_json", "diagnostic.data/"]
