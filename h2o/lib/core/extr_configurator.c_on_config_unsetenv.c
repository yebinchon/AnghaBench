
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t size; TYPE_3__** elements; } ;
struct TYPE_10__ {int scalar; TYPE_1__ sequence; } ;
struct TYPE_11__ {int type; TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
struct TYPE_12__ {int env; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;




 int h2o_config_unsetenv (int ,int ) ;
 int h2o_configurator_errprintf (int *,TYPE_3__*,char*) ;
 int inherit_env_if_necessary (TYPE_4__*) ;

__attribute__((used)) static int on_config_unsetenv(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    inherit_env_if_necessary(ctx);

    switch (node->type) {
    case 129:
        h2o_config_unsetenv(ctx->env, node->data.scalar);
        break;
    case 128: {
        size_t i;
        for (i = 0; i != node->data.sequence.size; ++i) {
            yoml_t *element = node->data.sequence.elements[i];
            if (element->type != 129) {
                h2o_configurator_errprintf(cmd, element, "element of a sequence passed to unsetenv must be a scalar");
                return -1;
            }
            h2o_config_unsetenv(ctx->env, element->data.scalar);
        }
    } break;
    default:
        h2o_configurator_errprintf(cmd, node, "argument to unsetenv must be either a scalar or a sequence");
        return -1;
    }

    return 0;
}
