
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yoml_t ;
struct expires_configurator_t {TYPE_3__** args; } ;
typedef int h2o_configurator_t ;
struct TYPE_5__ {int * pathconf; } ;
typedef TYPE_1__ h2o_configurator_context_t ;
struct TYPE_6__ {scalar_t__ mode; } ;


 scalar_t__ H2O_EXPIRES_MODE_MAX_AGE ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 int h2o_expires_register (int *,TYPE_3__*) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct expires_configurator_t *self = (void *)_self;

    if (*self->args != ((void*)0)) {

        if (ctx->pathconf != ((void*)0)) {
            h2o_expires_register(ctx->pathconf, *self->args);
        }

        assert((*self->args)->mode == H2O_EXPIRES_MODE_MAX_AGE);
        free(*self->args);
        *self->args = ((void*)0);
    }

    --self->args;
    return 0;
}
