
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cnt; } ;
struct TYPE_9__ {TYPE_1__ _write_buf; } ;
typedef TYPE_2__ h2o_websocket_conn_t ;
struct TYPE_10__ {TYPE_2__* data; } ;
typedef TYPE_3__ h2o_socket_t ;


 int assert (int) ;
 int free_write_buf (TYPE_2__*) ;
 int h2o_websocket_proceed (TYPE_2__*) ;
 int on_close (TYPE_2__*) ;

__attribute__((used)) static void on_write_complete(h2o_socket_t *sock, const char *err)
{
    h2o_websocket_conn_t *conn = sock->data;

    if (err != ((void*)0)) {
        on_close(conn);
        return;
    }
    assert(conn->_write_buf.cnt > 0);
    free_write_buf(conn);
    conn->_write_buf.cnt = 0;

    h2o_websocket_proceed(conn);
}
