
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ws_ctx; int * sock; } ;
typedef TYPE_1__ h2o_websocket_conn_t ;


 int free (TYPE_1__*) ;
 int free_write_buf (TYPE_1__*) ;
 int h2o_socket_close (int *) ;
 int wslay_event_context_free (int ) ;

void h2o_websocket_close(h2o_websocket_conn_t *conn)
{
    if (conn->sock != ((void*)0))
        h2o_socket_close(conn->sock);
    free_write_buf(conn);
    wslay_event_context_free(conn->ws_ctx);
    free(conn);
}
