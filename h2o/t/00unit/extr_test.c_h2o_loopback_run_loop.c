
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* ctx; } ;
struct TYPE_9__ {int * scheme; } ;
struct TYPE_11__ {int version; TYPE_3__ input; } ;
struct TYPE_10__ {TYPE_2__ super; int _is_complete; TYPE_5__ req; } ;
typedef TYPE_4__ h2o_loopback_conn_t ;
struct TYPE_7__ {int loop; } ;


 int H2O_URL_SCHEME_HTTP ;
 int INT32_MAX ;
 int UV_RUN_ONCE ;
 int h2o_evloop_run (int ,int ) ;
 int h2o_process_request (TYPE_5__*) ;
 int uv_run (int ,int ) ;

void h2o_loopback_run_loop(h2o_loopback_conn_t *conn)
{
    if (conn->req.input.scheme == ((void*)0))
        conn->req.input.scheme = &H2O_URL_SCHEME_HTTP;
    if (conn->req.version == 0)
        conn->req.version = 0x100;

    h2o_process_request(&conn->req);

    while (!conn->_is_complete) {



        h2o_evloop_run(conn->super.ctx->loop, INT32_MAX);

    }
}
