
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int req; int blocked_by_server; int _req_streaming_in_progress; } ;
typedef TYPE_1__ h2o_http2_stream_t ;
typedef int h2o_http2_conn_t ;


 scalar_t__ H2O_HTTP2_STREAM_STATE_END_STREAM ;
 int h2o_http2_stream_close (int *,TYPE_1__*) ;
 int h2o_http2_stream_set_blocked_by_server (int *,TYPE_1__*,int) ;
 int h2o_proceed_response (int *) ;

void h2o_http2_stream_proceed(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (stream->state == H2O_HTTP2_STREAM_STATE_END_STREAM) {
        if (!stream->_req_streaming_in_progress) {
            h2o_http2_stream_close(conn, stream);
        }
    } else {
        if (!stream->blocked_by_server)
            h2o_http2_stream_set_blocked_by_server(conn, stream, 1);
        h2o_proceed_response(&stream->req);
    }
}
