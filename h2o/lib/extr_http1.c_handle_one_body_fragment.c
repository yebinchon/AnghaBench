
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_6__ {scalar_t__ (* cb ) (int ,int ,int) ;int ctx; } ;
struct TYPE_7__ {size_t req_body_bytes_received; int * proceed_req; TYPE_1__ write_req; } ;
struct st_h2o_http1_conn_t {TYPE_3__ _ostr_final; int * _req_entity_reader; TYPE_2__ req; TYPE_4__* sock; } ;
struct TYPE_10__ {int bytes; } ;
struct TYPE_9__ {TYPE_5__* input; } ;


 scalar_t__ OSTREAM_STATE_DONE ;
 int cleanup_connection (struct st_h2o_http1_conn_t*) ;
 int entity_read_send_error_502 (struct st_h2o_http1_conn_t*,char*,char*) ;
 int h2o_buffer_consume (TYPE_5__**,size_t) ;
 int h2o_iovec_init (int ,size_t) ;
 int h2o_socket_read_stop (TYPE_4__*) ;
 int set_timeout (struct st_h2o_http1_conn_t*,int ,int *) ;
 scalar_t__ stub1 (int ,int ,int) ;

__attribute__((used)) static void handle_one_body_fragment(struct st_h2o_http1_conn_t *conn, size_t fragment_size, int complete)
{
    set_timeout(conn, 0, ((void*)0));
    h2o_socket_read_stop(conn->sock);
    if (conn->req.write_req.cb(conn->req.write_req.ctx, h2o_iovec_init(conn->sock->input->bytes, fragment_size), complete) != 0) {
        entity_read_send_error_502(conn, "Bad Gateway", "Bad Gateway");
        return;
    }
    h2o_buffer_consume(&conn->sock->input, fragment_size);
    conn->req.req_body_bytes_received += fragment_size;
    if (complete) {
        conn->req.proceed_req = ((void*)0);
        conn->_req_entity_reader = ((void*)0);
        if (conn->_ostr_final.state == OSTREAM_STATE_DONE) {
            cleanup_connection(conn);
        }
    }
}
