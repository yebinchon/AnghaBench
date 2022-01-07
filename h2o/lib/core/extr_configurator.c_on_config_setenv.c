
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t size; TYPE_1__* elements; } ;
struct TYPE_12__ {int scalar; TYPE_2__ mapping; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ data; } ;
typedef TYPE_4__ yoml_t ;
struct TYPE_14__ {int env; } ;
typedef TYPE_5__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_10__ {TYPE_4__* value; TYPE_4__* key; } ;


 scalar_t__ YOML_TYPE_SCALAR ;
 int h2o_config_setenv (int ,int ,int ) ;
 int h2o_configurator_errprintf (int *,TYPE_4__*,char*) ;
 int inherit_env_if_necessary (TYPE_5__*) ;

__attribute__((used)) static int on_config_setenv(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    size_t i;

    inherit_env_if_necessary(ctx);

    for (i = 0; i != node->data.mapping.size; ++i) {
        yoml_t *key = node->data.mapping.elements[i].key, *value = node->data.mapping.elements[i].value;
        if (key->type != YOML_TYPE_SCALAR) {
            h2o_configurator_errprintf(cmd, key, "key must be a scalar");
            return -1;
        }
        if (value->type != YOML_TYPE_SCALAR) {
            h2o_configurator_errprintf(cmd, value, "value must be a scalar");
            return -1;
        }
        h2o_config_setenv(ctx->env, key->data.scalar, value->data.scalar);
    }

    return 0;
}
