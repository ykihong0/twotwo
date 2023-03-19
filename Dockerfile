FROM python:3.7-slim

WORKDIR /app

RUN pip install -U scikit-learn numpy

COPY kfp_data_preprocess.py ./kfp_data_preprocess.py

ENTRYPOINT ["python", "kfp_data_preprocess.py"]