# Pull base image  
FROM registry.dataos.io/library/jdk:latest
  
MAINTAINER wangcy3@asiainfo.com wangcy3@asiainfo.com”  
ENV TIME_ZONE=Asia/Shanghai 
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone 
  
RUN mkdir -p /opt/logs/
ADD rainbow-basic-web-0.0.1-SNAPSHOT.jar /opt/

# Expose ports.  
EXPOSE 8080
  
# Define default command.  
ENTRYPOINT /usr/bin/java -jar /opt/rainbow-basic-web-0.0.1-SNAPSHOT.jar