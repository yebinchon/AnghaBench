
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {char* scalar; } ;
struct TYPE_14__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
struct TYPE_15__ {int pathconf; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;




 int h2o_configurator_errprintf (int *,TYPE_2__*,char*) ;
 int h2o_configurator_get_one_of (int *,TYPE_2__*,char*) ;
 int h2o_configurator_parse_mapping (int *,TYPE_2__*,char*,char*,TYPE_2__***,TYPE_2__***,TYPE_2__***) ;
 int h2o_configurator_scanf (int *,TYPE_2__*,char*,int*) ;
 int h2o_redirect_register (int ,int,int,char const*) ;

__attribute__((used)) static int on_config(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    const char *dest;
    int status = 302;
    int internal = 0;

    switch (node->type) {
    case 128:
        dest = node->data.scalar;
        break;
    case 129: {
        yoml_t **url_node, **status_node, **internal_node;
        if (h2o_configurator_parse_mapping(cmd, node, "url:s,status:*", "internal:*", &url_node, &status_node, &internal_node) != 0)
            return -1;
        dest = (*url_node)->data.scalar;
        if (h2o_configurator_scanf(cmd, *status_node, "%d", &status) != 0)
            return -1;
        if (!(300 <= status && status <= 399)) {
            h2o_configurator_errprintf(cmd, *status_node, "value of property `status` should be within 300 to 399");
            return -1;
        }
        if (internal_node != ((void*)0)) {
            switch (h2o_configurator_get_one_of(cmd, *internal_node, "YES,NO")) {
            case 0:
                internal = 1;
                break;
            case 1:
                internal = 0;
                break;
            default:
                return -1;
            }
        }
    } break;
    default:
        h2o_configurator_errprintf(cmd, node, "value must be a string or a mapping");
        return -1;
    }

    h2o_redirect_register(ctx->pathconf, internal, status, dest);

    return 0;
}
