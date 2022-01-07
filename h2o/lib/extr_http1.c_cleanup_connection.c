
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ctx; int * cb; } ;
struct TYPE_6__ {int * proceed_req; TYPE_2__ write_req; int http1_is_persistent; } ;
struct st_h2o_http1_conn_t {scalar_t__ _unconsumed_request_size; scalar_t__ _prevreqlen; TYPE_3__ req; TYPE_1__* sock; int * _req_entity_reader; } ;
struct TYPE_4__ {int input; } ;


 int assert (int ) ;
 int close_connection (struct st_h2o_http1_conn_t*,int) ;
 int h2o_buffer_consume (int *,scalar_t__) ;
 int init_request (struct st_h2o_http1_conn_t*) ;
 int reqread_start (struct st_h2o_http1_conn_t*) ;

__attribute__((used)) static void cleanup_connection(struct st_h2o_http1_conn_t *conn)
{
    if (!conn->req.http1_is_persistent) {

        close_connection(conn, 1);
        return;
    }

    assert(conn->req.proceed_req == ((void*)0));
    assert(conn->_req_entity_reader == ((void*)0));


    if (conn->_unconsumed_request_size)
        h2o_buffer_consume(&conn->sock->input, conn->_unconsumed_request_size);
    init_request(conn);
    conn->req.write_req.cb = ((void*)0);
    conn->req.write_req.ctx = ((void*)0);
    conn->req.proceed_req = ((void*)0);
    conn->_prevreqlen = 0;
    conn->_unconsumed_request_size = 0;
    reqread_start(conn);
}
