
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {int defer_timeout; } ;
struct st_h2o_http2client_conn_t {int io_timeout; TYPE_3__ super; TYPE_1__ output; } ;
struct TYPE_9__ {struct st_h2o_http2client_conn_t* data; } ;
typedef TYPE_4__ h2o_socket_t ;
struct TYPE_7__ {int io_timeout; int loop; } ;


 int call_stream_callbacks_with_error (struct st_h2o_http2client_conn_t*,int ) ;
 int close_connection (struct st_h2o_http2client_conn_t*) ;
 int do_emit_writereq (struct st_h2o_http2client_conn_t*) ;
 int h2o_httpclient_error_io ;
 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_link (int ,int ,int *) ;
 int h2o_timer_unlink (int *) ;
 scalar_t__ parse_input (struct st_h2o_http2client_conn_t*) ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http2client_conn_t *conn = sock->data;

    h2o_timer_unlink(&conn->io_timeout);

    if (err != ((void*)0)) {
        call_stream_callbacks_with_error(conn, h2o_httpclient_error_io);
        close_connection(conn);
        return;
    }

    if (parse_input(conn) != 0)
        return;


    if (h2o_timer_is_linked(&conn->output.defer_timeout)) {
        h2o_timer_unlink(&conn->output.defer_timeout);
        do_emit_writereq(conn);
    }

    if (!h2o_timer_is_linked(&conn->io_timeout))
        h2o_timer_link(conn->super.ctx->loop, conn->super.ctx->io_timeout, &conn->io_timeout);
}
