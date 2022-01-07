
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_8__* input; TYPE_2__* data; } ;
typedef TYPE_1__ h2o_socket_t ;
struct TYPE_13__ {TYPE_1__* sock; TYPE_8__* _http1_req_input; } ;
typedef TYPE_2__ h2o_http2_conn_t ;
struct TYPE_14__ {size_t size; scalar_t__ bytes; } ;


 int close_connection (TYPE_2__*) ;
 int execute_or_enqueue_request (TYPE_2__*,int ) ;
 int h2o_buffer_init (TYPE_8__**,int *) ;
 int h2o_buffer_reserve (TYPE_8__**,size_t) ;
 int h2o_http2_conn_get_stream (TYPE_2__*,int) ;
 int h2o_socket_buffer_prototype ;
 int h2o_socket_read_start (TYPE_1__*,int (*) (TYPE_1__*,int *)) ;
 int memcpy (scalar_t__,scalar_t__,size_t) ;
 int on_read (TYPE_1__*,int *) ;

__attribute__((used)) static void on_upgrade_complete(void *_conn, h2o_socket_t *sock, size_t reqsize)
{
    h2o_http2_conn_t *conn = _conn;

    if (sock == ((void*)0)) {
        close_connection(conn);
        return;
    }

    conn->sock = sock;
    sock->data = conn;
    conn->_http1_req_input = sock->input;
    h2o_buffer_init(&sock->input, &h2o_socket_buffer_prototype);


    h2o_socket_read_start(conn->sock, on_read);


    execute_or_enqueue_request(conn, h2o_http2_conn_get_stream(conn, 1));

    if (conn->_http1_req_input->size > reqsize) {
        size_t remaining_bytes = conn->_http1_req_input->size - reqsize;
        h2o_buffer_reserve(&sock->input, remaining_bytes);
        memcpy(sock->input->bytes, conn->_http1_req_input->bytes + reqsize, remaining_bytes);
        sock->input->size += remaining_bytes;
        on_read(conn->sock, ((void*)0));
    }
}
