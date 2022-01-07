
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int window; } ;
struct st_h2o_http2client_stream_t {TYPE_3__* conn; TYPE_1__ output; } ;
typedef size_t ssize_t ;
struct TYPE_5__ {size_t max_frame_size; } ;
struct TYPE_6__ {TYPE_2__ peer_settings; } ;


 size_t conn_get_buffer_window (TYPE_3__*) ;
 size_t h2o_http2_window_get_avail (int *) ;
 size_t sz_min (size_t,size_t) ;

__attribute__((used)) static size_t calc_max_payload_size(struct st_h2o_http2client_stream_t *stream)
{
    ssize_t conn_max, stream_max;

    if ((conn_max = conn_get_buffer_window(stream->conn)) <= 0)
        return 0;
    if ((stream_max = h2o_http2_window_get_avail(&stream->output.window)) <= 0)
        return 0;
    return sz_min(sz_min(conn_max, stream_max), stream->conn->peer_settings.max_frame_size);
}
