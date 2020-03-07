#!/bin/bash
# source ENV/bin/activate

case $1 in
  dev)
    python manage.py runserver --settings=todo_app.settings.dev
    ;;
  prod)
  	python manage.py collectstatic --noinput
    python manage.py makemigrations    
    python manage.py migrate
    python manage.py runserver --settings=todo_app.settings.prod
    ;;
esac