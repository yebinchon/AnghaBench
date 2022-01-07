
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int sock; } ;
typedef TYPE_1__ h2o_http2_conn_t ;


 scalar_t__ H2O_HTTP2_CONN_STATE_IS_CLOSING ;
 scalar_t__ H2O_HTTP2_DEFAULT_OUTBUF_SOFT_MAX_SIZE ;
 scalar_t__ bytes_in_buf (TYPE_1__*) ;
 scalar_t__ h2o_socket_is_reading (int ) ;
 int h2o_socket_read_stop (int ) ;
 int request_gathered_write (TYPE_1__*) ;

void h2o_http2_conn_request_write(h2o_http2_conn_t *conn)
{
    if (conn->state == H2O_HTTP2_CONN_STATE_IS_CLOSING)
        return;
    if (h2o_socket_is_reading(conn->sock) && bytes_in_buf(conn) >= H2O_HTTP2_DEFAULT_OUTBUF_SOFT_MAX_SIZE)
        h2o_socket_read_stop(conn->sock);
    request_gathered_write(conn);
}
