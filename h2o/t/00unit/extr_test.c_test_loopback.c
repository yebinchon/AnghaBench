
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int status; } ;
struct TYPE_14__ {void* path; void* method; } ;
struct TYPE_16__ {TYPE_3__ res; TYPE_2__ input; } ;
struct TYPE_17__ {TYPE_4__ req; } ;
typedef TYPE_5__ h2o_loopback_conn_t ;
typedef int h2o_globalconf_t ;
struct TYPE_18__ {TYPE_1__* globalconf; } ;
typedef TYPE_6__ h2o_context_t ;
struct TYPE_13__ {int hosts; } ;


 int H2O_STRLIT (char*) ;
 int h2o_config_dispose (int *) ;
 int h2o_config_init (int *) ;
 int h2o_config_register_host (int *,void*,int) ;
 int h2o_context_dispose (TYPE_6__*) ;
 int h2o_context_init (TYPE_6__*,int ,int *) ;
 void* h2o_iovec_init (int ) ;
 TYPE_5__* h2o_loopback_create (TYPE_6__*,int ) ;
 int h2o_loopback_destroy (TYPE_5__*) ;
 int h2o_loopback_run_loop (TYPE_5__*) ;
 int ok (int) ;
 int test_loop ;

__attribute__((used)) static void test_loopback(void)
{
    h2o_globalconf_t conf;
    h2o_context_t ctx;
    h2o_loopback_conn_t *conn;

    h2o_config_init(&conf);
    h2o_config_register_host(&conf, h2o_iovec_init(H2O_STRLIT("default")), 65535);
    h2o_context_init(&ctx, test_loop, &conf);

    conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
    conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
    conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
    h2o_loopback_run_loop(conn);

    ok(conn->req.res.status == 404);

    h2o_loopback_destroy(conn);

    h2o_context_dispose(&ctx);
    h2o_config_dispose(&conf);
}
