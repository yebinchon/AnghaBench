
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sock; int (* cb ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ h2o_websocket_conn_t ;
struct TYPE_7__ {int input; TYPE_1__* data; } ;
typedef TYPE_2__ h2o_socket_t ;


 int h2o_buffer_consume (int *,size_t) ;
 int h2o_websocket_proceed (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static void on_complete(void *user_data, h2o_socket_t *sock, size_t reqsize)
{
    h2o_websocket_conn_t *conn = user_data;


    if (sock == ((void*)0)) {
        (*conn->cb)(conn, ((void*)0));
        return;
    }

    conn->sock = sock;
    sock->data = conn;
    h2o_buffer_consume(&sock->input, reqsize);
    h2o_websocket_proceed(conn);
}
