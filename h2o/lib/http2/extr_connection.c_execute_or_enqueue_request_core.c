
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int _link; } ;
typedef TYPE_1__ h2o_http2_stream_t ;
struct TYPE_8__ {int _pending_reqs; } ;
typedef TYPE_2__ h2o_http2_conn_t ;


 int h2o_linklist_insert (int *,int *) ;
 int run_pending_requests (TYPE_2__*) ;
 int update_idle_timeout (TYPE_2__*) ;

__attribute__((used)) static void execute_or_enqueue_request_core(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{

    h2o_linklist_insert(&conn->_pending_reqs, &stream->_link);

    run_pending_requests(conn);
    update_idle_timeout(conn);
}
