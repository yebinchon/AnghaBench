
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * env; TYPE_1__* parent; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_4__ {int * env; } ;


 int * h2o_config_create_envconf (int *) ;

__attribute__((used)) static void inherit_env_if_necessary(h2o_configurator_context_t *ctx)
{
    if (ctx->env == (ctx->parent != ((void*)0) ? ctx->parent->env : ((void*)0)))
        ctx->env = h2o_config_create_envconf(ctx->env);
}
