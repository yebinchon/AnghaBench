
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int defer_timeout; int * buf_in_flight; } ;
struct TYPE_3__ {int sock; } ;
struct st_h2o_http2client_conn_t {TYPE_2__ output; TYPE_1__ super; int state; } ;


 int H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING ;
 int close_connection_now (struct st_h2o_http2client_conn_t*) ;
 int h2o_socket_read_stop (int ) ;
 scalar_t__ h2o_timer_is_linked (int *) ;

__attribute__((used)) static int close_connection(struct st_h2o_http2client_conn_t *conn)
{
    conn->state = H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING;
    h2o_socket_read_stop(conn->super.sock);

    if (conn->output.buf_in_flight != ((void*)0) || h2o_timer_is_linked(&conn->output.defer_timeout)) {

    } else {
        close_connection_now(conn);
        return -1;
    }
    return 0;
}
