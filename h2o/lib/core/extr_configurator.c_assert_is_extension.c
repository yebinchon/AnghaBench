
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* scalar; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int h2o_configurator_command_t ;


 scalar_t__ YOML_TYPE_SCALAR ;
 int h2o_configurator_errprintf (int *,TYPE_2__*,char*,...) ;

__attribute__((used)) static int assert_is_extension(h2o_configurator_command_t *cmd, yoml_t *node)
{
    if (node->type != YOML_TYPE_SCALAR) {
        h2o_configurator_errprintf(cmd, node, "expected a scalar (extension)");
        return -1;
    }
    if (node->data.scalar[0] != '.') {
        h2o_configurator_errprintf(cmd, node, "given extension \"%s\" does not start with a \".\"", node->data.scalar);
        return -1;
    }
    if (node->data.scalar[1] == '\0') {
        h2o_configurator_errprintf(cmd, node, "given extension \".\" is invalid: at least 2 characters are required");
        return -1;
    }
    return 0;
}
