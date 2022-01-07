
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int yoml_t ;
struct throttle_resp_configurator_t {TYPE_1__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_5__ {int * pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_4__ {scalar_t__ on; } ;


 int h2o_throttle_resp_register (int *) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *configurator, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct throttle_resp_configurator_t *self = (void *)configurator;

    if (ctx->pathconf != ((void*)0) && self->vars->on)
        h2o_throttle_resp_register(ctx->pathconf);

    --self->vars;
    return 0;
}
