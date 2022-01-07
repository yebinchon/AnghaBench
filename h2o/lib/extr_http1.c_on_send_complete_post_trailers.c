
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * proceed_req; scalar_t__ http1_is_persistent; } ;
struct TYPE_5__ {int state; } ;
struct st_h2o_http1_conn_t {TYPE_2__ req; TYPE_1__ _ostr_final; } ;
struct TYPE_7__ {struct st_h2o_http1_conn_t* data; } ;
typedef TYPE_3__ h2o_socket_t ;


 int OSTREAM_STATE_DONE ;
 int cleanup_connection (struct st_h2o_http1_conn_t*) ;

__attribute__((used)) static void on_send_complete_post_trailers(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1_conn_t *conn = sock->data;

    if (err != ((void*)0))
        conn->req.http1_is_persistent = 0;

    conn->_ostr_final.state = OSTREAM_STATE_DONE;
    if (conn->req.proceed_req == ((void*)0))
        cleanup_connection(conn);
}
