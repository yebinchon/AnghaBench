
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yoml_t ;
struct mruby_configurator_t {int * mrb; TYPE_2__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_7__ {int * parent; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
struct TYPE_5__ {scalar_t__ base; } ;
struct TYPE_6__ {TYPE_1__ source; } ;


 int free (scalar_t__) ;
 int mrb_close (int *) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct mruby_configurator_t *self = (void *)_self;


    if (self->vars[-1].source.base != self->vars[0].source.base)
        free(self->vars->source.base);

    --self->vars;


    if (self->mrb != ((void*)0) && ctx->parent == ((void*)0)) {
        mrb_close(self->mrb);
        self->mrb = ((void*)0);
    }

    return 0;
}
