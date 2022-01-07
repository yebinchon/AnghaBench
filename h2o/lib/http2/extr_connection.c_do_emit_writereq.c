
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_22__ {scalar_t__ member_1; int member_0; } ;
typedef TYPE_7__ h2o_iovec_t ;
struct TYPE_20__ {scalar_t__ open; } ;
struct TYPE_19__ {scalar_t__ open; } ;
struct TYPE_21__ {TYPE_5__ push; TYPE_4__ pull; } ;
struct TYPE_18__ {TYPE_2__* ctx; } ;
struct TYPE_16__ {TYPE_12__* buf; TYPE_12__* buf_in_flight; } ;
struct TYPE_23__ {int state; TYPE_6__ num_streams; int _timeout_entry; TYPE_3__ super; TYPE_1__ _write; int sock; int scheduler; } ;
typedef TYPE_8__ h2o_http2_conn_t ;
struct TYPE_17__ {int loop; } ;
struct TYPE_15__ {scalar_t__ size; int bytes; } ;





 int H2O_HTTP2_DEFAULT_OUTBUF_WRITE_TIMEOUT ;
 int assert (int ) ;
 int close_connection_now (TYPE_8__*) ;
 int emit_writereq_of_openref ;
 int h2o_buffer_init (TYPE_12__**,int *) ;
 scalar_t__ h2o_http2_conn_get_buffer_window (TYPE_8__*) ;
 int h2o_http2_scheduler_run (int *,int ,TYPE_8__*) ;
 int h2o_http2_wbuf_buffer_prototype ;
 int h2o_socket_write (int ,TYPE_7__*,int,int ) ;
 int h2o_timer_link (int ,int ,int *) ;
 int h2o_timer_unlink (int *) ;
 int on_write_complete ;

void do_emit_writereq(h2o_http2_conn_t *conn)
{
    assert(conn->_write.buf_in_flight == ((void*)0));


    if (conn->state < 129 && h2o_http2_conn_get_buffer_window(conn) > 0)
        h2o_http2_scheduler_run(&conn->scheduler, emit_writereq_of_openref, conn);

    if (conn->_write.buf->size != 0) {

        h2o_iovec_t buf = {conn->_write.buf->bytes, conn->_write.buf->size};
        h2o_socket_write(conn->sock, &buf, 1, on_write_complete);
        conn->_write.buf_in_flight = conn->_write.buf;
        h2o_buffer_init(&conn->_write.buf, &h2o_http2_wbuf_buffer_prototype);
        h2o_timer_unlink(&conn->_timeout_entry);
        h2o_timer_link(conn->super.ctx->loop, H2O_HTTP2_DEFAULT_OUTBUF_WRITE_TIMEOUT, &conn->_timeout_entry);
    }


    switch (conn->state) {
    case 128:
        break;
    case 130:
        if (conn->num_streams.pull.open + conn->num_streams.push.open != 0)
            break;
        conn->state = 129;

    case 129:
        close_connection_now(conn);
        break;
    }
}
