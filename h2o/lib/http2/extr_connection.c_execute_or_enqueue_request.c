
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; int blocked_by_server; } ;
typedef TYPE_1__ h2o_http2_stream_t ;
typedef int h2o_http2_conn_t ;


 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_HEADERS ;
 scalar_t__ H2O_HTTP2_STREAM_STATE_REQ_PENDING ;
 int assert (int) ;
 int execute_or_enqueue_request_core (int *,TYPE_1__*) ;
 int h2o_http2_stream_set_blocked_by_server (int *,TYPE_1__*,int) ;
 int h2o_http2_stream_set_state (int *,TYPE_1__*,scalar_t__) ;
 scalar_t__ reset_stream_if_disregarded (int *,TYPE_1__*) ;

__attribute__((used)) static void execute_or_enqueue_request(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    assert(stream->state == H2O_HTTP2_STREAM_STATE_RECV_HEADERS || stream->state == H2O_HTTP2_STREAM_STATE_REQ_PENDING);

    if (reset_stream_if_disregarded(conn, stream))
        return;

    h2o_http2_stream_set_state(conn, stream, H2O_HTTP2_STREAM_STATE_REQ_PENDING);
    if (!stream->blocked_by_server)
        h2o_http2_stream_set_blocked_by_server(conn, stream, 1);
    execute_or_enqueue_request_core(conn, stream);
}
