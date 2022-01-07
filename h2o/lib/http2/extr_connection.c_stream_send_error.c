
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int buf; } ;
struct TYPE_12__ {TYPE_3__* ctx; } ;
struct TYPE_14__ {scalar_t__ state; TYPE_5__ _write; TYPE_4__ super; } ;
typedef TYPE_6__ h2o_http2_conn_t ;
struct TYPE_9__ {int * protocol_level_errors; } ;
struct TYPE_10__ {TYPE_1__ events; } ;
struct TYPE_11__ {TYPE_2__ http2; } ;


 scalar_t__ H2O_HTTP2_CONN_STATE_IS_CLOSING ;
 int assert (int) ;
 int h2o_http2_conn_request_write (TYPE_6__*) ;
 int h2o_http2_encode_rst_stream_frame (int *,int ,int) ;

__attribute__((used)) static void stream_send_error(h2o_http2_conn_t *conn, uint32_t stream_id, int errnum)
{
    assert(stream_id != 0);
    assert(conn->state < H2O_HTTP2_CONN_STATE_IS_CLOSING);

    conn->super.ctx->http2.events.protocol_level_errors[-errnum]++;

    h2o_http2_encode_rst_stream_frame(&conn->_write.buf, stream_id, -errnum);
    h2o_http2_conn_request_write(conn);
}
