
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int yoml_t ;
struct server_timing_configurator_t {TYPE_1__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_5__ {int * pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_4__ {scalar_t__ mode; } ;


 scalar_t__ SERVER_TIMING_MODE_ENFORCE ;
 scalar_t__ SERVER_TIMING_MODE_OFF ;
 int h2o_server_timing_register (int *,int) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct server_timing_configurator_t *self = (void *)_self;

    if (ctx->pathconf != ((void*)0) && self->vars->mode != SERVER_TIMING_MODE_OFF)
        h2o_server_timing_register(ctx->pathconf, self->vars->mode == SERVER_TIMING_MODE_ENFORCE);

    --self->vars;
    return 0;
}
