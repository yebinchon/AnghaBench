
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t size; TYPE_3__** elements; } ;
struct TYPE_8__ {TYPE_1__ sequence; } ;
struct TYPE_9__ {int type; TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;




 int h2o_configurator_errprintf (int *,TYPE_3__*,char*) ;
 int register_errordoc (int *,int *,TYPE_3__*) ;

__attribute__((used)) static int on_config_errordoc(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    switch (node->type) {
    case 128: {
        size_t i;
        for (i = 0; i != node->data.sequence.size; ++i) {
            yoml_t *e = node->data.sequence.elements[i];
            if (e->type != 129) {
                h2o_configurator_errprintf(cmd, e, "element must be a mapping");
                return -1;
            }
            if (register_errordoc(cmd, ctx, e) != 0)
                return -1;
        }
        return 0;
    }
    case 129:
        return register_errordoc(cmd, ctx, node);
    default:
        break;
    }

    h2o_configurator_errprintf(cmd, node, "argument must be either of: sequence, mapping");
    return -1;
}
