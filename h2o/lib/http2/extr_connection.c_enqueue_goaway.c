
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h2o_iovec_t ;
struct TYPE_7__ {int max_open; } ;
struct TYPE_6__ {int buf; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_2__ pull_stream_ids; TYPE_1__ _write; } ;
typedef TYPE_3__ h2o_http2_conn_t ;


 scalar_t__ H2O_HTTP2_CONN_STATE_HALF_CLOSED ;
 scalar_t__ H2O_HTTP2_CONN_STATE_IS_CLOSING ;
 int h2o_http2_conn_request_write (TYPE_3__*) ;
 int h2o_http2_encode_goaway_frame (int *,int ,int,int ) ;

__attribute__((used)) static void enqueue_goaway(h2o_http2_conn_t *conn, int errnum, h2o_iovec_t additional_data)
{
    if (conn->state < H2O_HTTP2_CONN_STATE_IS_CLOSING) {

        h2o_http2_encode_goaway_frame(&conn->_write.buf, conn->pull_stream_ids.max_open, errnum, additional_data);
        h2o_http2_conn_request_write(conn);
        conn->state = H2O_HTTP2_CONN_STATE_HALF_CLOSED;
    }
}
