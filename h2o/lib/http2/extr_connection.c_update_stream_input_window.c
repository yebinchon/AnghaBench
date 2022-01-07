
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bytes_unnotified; int window; } ;
struct TYPE_5__ {TYPE_1__ input_window; int stream_id; } ;
typedef TYPE_2__ h2o_http2_stream_t ;
typedef int h2o_http2_conn_t ;


 scalar_t__ h2o_http2_window_get_avail (int *) ;
 int send_window_update (int *,int ,int *,scalar_t__) ;

void update_stream_input_window(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, size_t delta)
{
    stream->input_window.bytes_unnotified += delta;
    if (stream->input_window.bytes_unnotified >= h2o_http2_window_get_avail(&stream->input_window.window)) {
        send_window_update(conn, stream->stream_id, &stream->input_window.window, stream->input_window.bytes_unnotified);
        stream->input_window.bytes_unnotified = 0;
    }
}
