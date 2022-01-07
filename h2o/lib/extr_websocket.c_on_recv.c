
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_websocket_conn_t ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ h2o_socket_t ;


 int h2o_websocket_proceed (int *) ;
 int on_close (int *) ;

__attribute__((used)) static void on_recv(h2o_socket_t *sock, const char *err)
{
    h2o_websocket_conn_t *conn = sock->data;

    if (err != ((void*)0)) {
        on_close(conn);
        return;
    }
    h2o_websocket_proceed(conn);
}
