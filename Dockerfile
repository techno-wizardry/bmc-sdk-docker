FROM python:2
RUN cd /var/tmp/ && wget https://communities.bmc.com/servlet/JiveServlet/download/30711-16-31530939/python-sdk-4.5.00-src.zip
RUN apt-get update && apt-get install unzip && unzip /var/tmp/python-sdk-4.5.00-src.zip && cd /var/tmp/ && python setup.py install
