
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timeout_entry; int * buf_in_flight; } ;
struct TYPE_6__ {TYPE_1__ _write; int state; } ;
typedef TYPE_2__ h2o_http2_conn_t ;


 int H2O_HTTP2_CONN_STATE_IS_CLOSING ;
 int close_connection_now (TYPE_2__*) ;
 scalar_t__ h2o_timer_is_linked (int *) ;

int close_connection(h2o_http2_conn_t *conn)
{
    conn->state = H2O_HTTP2_CONN_STATE_IS_CLOSING;

    if (conn->_write.buf_in_flight != ((void*)0) || h2o_timer_is_linked(&conn->_write.timeout_entry)) {

    } else {
        close_connection_now(conn);
        return -1;
    }
    return 0;
}
