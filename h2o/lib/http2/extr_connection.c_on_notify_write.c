
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ h2o_socket_t ;
typedef int h2o_http2_conn_t ;


 int close_connection_now (int *) ;
 int do_emit_writereq (int *) ;

__attribute__((used)) static void on_notify_write(h2o_socket_t *sock, const char *err)
{
    h2o_http2_conn_t *conn = sock->data;

    if (err != ((void*)0)) {
        close_connection_now(conn);
        return;
    }
    do_emit_writereq(conn);
}
