
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * env; TYPE_1__* pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_5__ {int * env; } ;


 int free (TYPE_2__*) ;
 int h2o_mem_release_shared (int *) ;

__attribute__((used)) static void destroy_context(h2o_configurator_context_t *ctx)
{
    if (ctx->env != ((void*)0)) {
        if (ctx->pathconf != ((void*)0))
            ctx->pathconf->env = ctx->env;
        else
            h2o_mem_release_shared(ctx->env);
    }
    free(ctx);
}
