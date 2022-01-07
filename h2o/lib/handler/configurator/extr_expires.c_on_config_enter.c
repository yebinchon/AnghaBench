
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yoml_t ;
struct expires_configurator_t {TYPE_1__** args; } ;
typedef int h2o_configurator_t ;
typedef int h2o_configurator_context_t ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ H2O_EXPIRES_MODE_MAX_AGE ;
 int assert (int) ;
 TYPE_1__* h2o_mem_alloc (int) ;

__attribute__((used)) static int on_config_enter(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct expires_configurator_t *self = (void *)_self;

    if (self->args[0] != ((void*)0)) {

        assert(self->args[0]->mode == H2O_EXPIRES_MODE_MAX_AGE);
        self->args[1] = h2o_mem_alloc(sizeof(**self->args));
        *self->args[1] = *self->args[0];
    } else {
        self->args[1] = ((void*)0);
    }
    ++self->args;
    return 0;
}
