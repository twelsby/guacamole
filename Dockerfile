FROM guacamole/guacamole
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    && rm -rf /usr/local/tomcat/webapps/docs \
    && rm -rf /usr/local/tomcat/webapps/examples \
    && rm -rf /usr/local/tomcat/webapps/host-manager \
    && rm -rf /usr/local/tomcat/webapps/manager \
    && sed -i "s#/usr/local/tomcat/webapps/#/usr/local/tomcat/webapps/ROOT.war#" /opt/guacamole/bin/start.sh
