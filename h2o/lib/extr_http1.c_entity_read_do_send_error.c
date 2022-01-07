
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_8__ {scalar_t__ http1_is_persistent; int * _generator; int * proceed_req; } ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct st_h2o_http1_conn_t {TYPE_3__ _ostr_final; TYPE_4__ req; TYPE_2__ super; int sock; int * _req_entity_reader; } ;
struct TYPE_5__ {int * emitted_error_status; } ;


 int H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION ;
 scalar_t__ OSTREAM_STATE_DONE ;
 scalar_t__ OSTREAM_STATE_HEAD ;
 int cleanup_connection (struct st_h2o_http1_conn_t*) ;
 int h2o_send_error_generic (TYPE_4__*,int,char const*,char const*,int ) ;
 int h2o_socket_read_stop (int ) ;
 int set_timeout (struct st_h2o_http1_conn_t*,int ,int *) ;

__attribute__((used)) static void entity_read_do_send_error(struct st_h2o_http1_conn_t *conn, int status, size_t status_error_index, const char *reason,
                                      const char *body)
{
    conn->req.proceed_req = ((void*)0);
    conn->_req_entity_reader = ((void*)0);
    set_timeout(conn, 0, ((void*)0));
    h2o_socket_read_stop(conn->sock);


    if (conn->req._generator == ((void*)0) && conn->_ostr_final.state == OSTREAM_STATE_HEAD) {
        conn->super.ctx->emitted_error_status[status_error_index]++;
        h2o_send_error_generic(&conn->req, status, reason, body, H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION);
    } else {
        conn->req.http1_is_persistent = 0;
        if (conn->_ostr_final.state == OSTREAM_STATE_DONE)
            cleanup_connection(conn);
    }
}
