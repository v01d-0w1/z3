#!/bin/bash

echo -n "Enter countdown time (e.g. 5m, 1h30m): "
read TIME

if [ -n "$TIME" ]; then
    termdown "$TIME"
    # After termdown finishes - loop the audio
    cvlc --no-video --loop ~/Music/'kaizen： becoming one percent better everyday ｜ a soothing playlist for focus time [OoSzt2Ga8Oc].mp3'
    ~/.config/i3/scripts/termdown_input.sh
else
    echo "No time entered. Exiting..."
    sleep 2
fi
