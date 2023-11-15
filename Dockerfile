python:3.8-slim-buster
USER 0
RUN mkdir -p /app
USER $CONTAINER_USER_ID
COPY ./reqirements.txt /app/reqirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /opt/app
EXPOSE 5000
CMD ["python", "app.py"]

