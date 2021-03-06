#!/bin/bash

# Created by Jordi Cenzano on 06/12/16.
# SUPER FAST FRAME ACCURACY HLS TRIMMING TEST CODE

dest_file="/Users/jcenzano/Movies/hls_wowza/out/out_trimmed.mp4"
hls_source_dir="/Users/jcenzano/Movies/hls_wowza/"
tmp_dir="/Users/jcenzano/Movies/hls_wowza/tmp"

#Trim 10 frames from the first segment. Assuming 30fps and startTimestamp of 1st chunk = 71336.250067s
#( 71336.250067 + ((1/30) * 10) ) * 1000.0
in_trim_ts_ms=71336583.4003333

#Trim all content after 60 frames of the last segment. Assuming 30fps and startTimestamp of the last chunk = 71352.250067s
#( 71352.250067 + ((1/30) * 60) ) * 1000.0
out_trim_ts_ms=71354250.067

./trim_hls_frame_acc.js $hls_source_dir $dest_file $tmp_dir $in_trim_ts_ms $out_trim_ts_ms
