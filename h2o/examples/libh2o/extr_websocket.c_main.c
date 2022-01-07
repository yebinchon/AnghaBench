
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int h2o_pathconf_t ;
typedef int h2o_hostconf_t ;
typedef int h2o_handler_t ;
struct TYPE_12__ {int hosts; TYPE_2__* ctx; } ;
struct TYPE_11__ {int hosts; } ;
struct TYPE_10__ {int loop; } ;
struct TYPE_9__ {int on_req; } ;


 int H2O_STRLIT (char*) ;
 int INT32_MAX ;
 int UV_RUN_DEFAULT ;
 TYPE_8__ accept_ctx ;
 TYPE_3__ config ;
 scalar_t__ create_listener () ;
 TYPE_2__ ctx ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int h2o_config_init (TYPE_3__*) ;
 int * h2o_config_register_host (TYPE_3__*,int ,int) ;
 int * h2o_config_register_path (int *,char*,int ) ;
 int h2o_context_init (TYPE_2__*,int *,TYPE_3__*) ;
 TYPE_1__* h2o_create_handler (int *,int) ;
 int * h2o_evloop_create () ;
 scalar_t__ h2o_evloop_run (int ,int ) ;
 int h2o_iovec_init (int ) ;
 int on_req ;
 int stderr ;
 char* strerror (int ) ;
 int uv_loop_init (int *) ;
 int uv_run (int ,int ) ;

int main(int argc, char **argv)
{
    h2o_hostconf_t *hostconf;
    h2o_pathconf_t *pathconf;

    h2o_config_init(&config);
    hostconf = h2o_config_register_host(&config, h2o_iovec_init(H2O_STRLIT("default")), 65535);
    pathconf = h2o_config_register_path(hostconf, "/", 0);
    h2o_create_handler(pathconf, sizeof(h2o_handler_t))->on_req = on_req;






    h2o_context_init(&ctx, h2o_evloop_create(), &config);
    accept_ctx.ctx = &ctx;
    accept_ctx.hosts = config.hosts;

    if (create_listener() != 0) {
        fprintf(stderr, "failed to listen to 127.0.0.1:7890:%s\n", strerror(errno));
        goto Error;
    }




    while (h2o_evloop_run(ctx.loop, INT32_MAX) == 0)
        ;


Error:
    return 1;
}
