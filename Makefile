install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest

format:	
	black *.py 

lint:
	pylint --disable=R,C *.py

refactor: format lint
		
all: install lint test
