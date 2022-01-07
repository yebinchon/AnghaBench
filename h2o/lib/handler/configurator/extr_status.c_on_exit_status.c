
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yoml_t ;
struct st_status_configurator {scalar_t__ duration_stats; int stack; } ;
typedef int h2o_configurator_t ;
struct TYPE_3__ {int globalconf; } ;
typedef TYPE_1__ h2o_configurator_context_t ;


 int h2o_duration_stats_register (int ) ;

int on_exit_status(h2o_configurator_t *_conf, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_status_configurator *c = (void *)_conf;
    c->stack--;
    if (!c->stack && c->duration_stats) {
        h2o_duration_stats_register(ctx->globalconf);
    }
    return 0;
}
