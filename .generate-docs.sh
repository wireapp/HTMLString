#!/bin/bash
set -e

MODULE_VERSION=$1
OUTPUT=$2
SWIFT_VERSION="5.0"
AUTHOR="Alexis Aubry"
AUTHOR_URL="https://twitter.com/_alexaubry"
MODULE_NAME="HTMLString"
COPYRIGHT="Copyright © 2016 - present $AUTHOR. Available under the MIT License."
GITHUB_URL="https://github.com/alexaubry/HTMLString"
GH_PAGES_URL="https://alexaubry.github.io/HTMLString"

bundle exec jazzy \
    --swift-version $SWIFT_VERSION \
    -a "$AUTHOR" \
    -u "$AUTHOR_URL" \
    -m "$MODULE_NAME" \
    --module-version "$MODULE_VERSION" \
    --copyright "$COPYRIGHT" \
    -g "$GITHUB_URL" \
    --github-file-prefix "$GITHUB_URL/tree/master" \
    -r "$GH_PAGES_URL" \
    -o "$OUTPUT"\
    --min-acl public \
    --use-safe-filenames
