init:
    uv sync --all-groups
    uv pip install -e .
    uv run pre-commit install

coverage:
    uv run coverage run --source=package_name -m pytest
    uv run coverage report -m
    uv run coverage xml
    uv run genbadge coverage -i coverage.xml
    rm coverage.xml

preview:
    uv run mkdocs serve

test:
    uv run pytest
