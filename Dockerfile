# ใช้ Node.js 20 เป็น base image
FROM node:20


WORKDIR /usr/src/app


COPY package*.json ./


RUN npm install


COPY . .


EXPOSE 3000


CMD [ "node", "index.js" ]