
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_http1_conn_t {TYPE_1__* _req_entity_reader; } ;
struct TYPE_5__ {struct st_h2o_http1_conn_t* data; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int (* handle_incoming_entity ) (struct st_h2o_http1_conn_t*) ;} ;


 int close_connection (struct st_h2o_http1_conn_t*,int) ;
 int handle_incoming_request (struct st_h2o_http1_conn_t*) ;
 int stub1 (struct st_h2o_http1_conn_t*) ;

void reqread_on_read(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1_conn_t *conn = sock->data;

    if (err != ((void*)0)) {
        close_connection(conn, 1);
        return;
    }

    if (conn->_req_entity_reader == ((void*)0))
        handle_incoming_request(conn);
    else
        conn->_req_entity_reader->handle_incoming_entity(conn);
}
