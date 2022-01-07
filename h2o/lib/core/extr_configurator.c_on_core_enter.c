
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
struct st_core_configurator_t {int * vars; } ;
typedef int h2o_configurator_t ;
typedef int h2o_configurator_context_t ;



__attribute__((used)) static int on_core_enter(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_core_configurator_t *self = (void *)_self;

    ++self->vars;
    self->vars[0] = self->vars[-1];
    return 0;
}
