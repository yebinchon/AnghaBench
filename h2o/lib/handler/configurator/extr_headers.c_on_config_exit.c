
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yoml_t ;
struct headers_configurator_t {int ** cmds; } ;
typedef int h2o_configurator_t ;
struct TYPE_3__ {int * pathconf; } ;
typedef TYPE_1__ h2o_configurator_context_t ;


 int h2o_headers_register (int *,int *) ;
 int h2o_mem_addref_shared (int *) ;
 int h2o_mem_release_shared (int *) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct headers_configurator_t *self = (void *)_self;

    if (ctx->pathconf != ((void*)0) && *self->cmds != ((void*)0)) {
        if (*self->cmds != ((void*)0))
            h2o_mem_addref_shared(*self->cmds);
        h2o_headers_register(ctx->pathconf, *self->cmds);
    }

    if (*self->cmds != ((void*)0))
        h2o_mem_release_shared(*self->cmds);
    --self->cmds;
    return 0;
}
