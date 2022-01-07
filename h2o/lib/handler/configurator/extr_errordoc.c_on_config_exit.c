
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int yoml_t ;
struct errordoc_configurator_t {int pool; TYPE_1__* _vars_stack; TYPE_1__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_5__ {int * pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_4__ {scalar_t__ size; int entries; } ;


 int h2o_errordoc_register (int *,int ,scalar_t__) ;
 int h2o_mem_clear_pool (int *) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct errordoc_configurator_t *self = (void *)_self;

    if (ctx->pathconf != ((void*)0) && self->vars->size != 0)
        h2o_errordoc_register(ctx->pathconf, self->vars->entries, self->vars->size);

    --self->vars;
    if (self->vars == self->_vars_stack) {

        h2o_mem_clear_pool(&self->pool);
    }

    return 0;
}
