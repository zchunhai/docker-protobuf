FROM python:3.6.5-alpine

RUN apk --no-cache add python-dev build-base

RUN pip install grpcio-tools==1.22.0

ENTRYPOINT ["python", "-m", "grpc_tools.protoc"]
