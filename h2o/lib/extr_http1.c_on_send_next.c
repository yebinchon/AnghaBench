
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http1_conn_t {int req; } ;
struct TYPE_3__ {struct st_h2o_http1_conn_t* data; } ;
typedef TYPE_1__ h2o_socket_t ;


 int close_connection (struct st_h2o_http1_conn_t*,int) ;
 int h2o_proceed_response (int *) ;

__attribute__((used)) static void on_send_next(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1_conn_t *conn = sock->data;

    if (err != ((void*)0))
        close_connection(conn, 1);
    else
        h2o_proceed_response(&conn->req);
}
