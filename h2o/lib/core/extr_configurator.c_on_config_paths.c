
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {size_t size; TYPE_6__* elements; } ;
struct TYPE_16__ {int scalar; TYPE_1__ mapping; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
typedef int h2o_pathconf_t ;
struct TYPE_18__ {TYPE_10__* hostconf; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_19__ {int value; TYPE_3__* key; } ;
struct TYPE_14__ {int fallback_path; } ;


 scalar_t__ YOML_TYPE_SCALAR ;
 int config_path (TYPE_4__*,int *,TYPE_3__*) ;
 TYPE_3__* convert_path_config_node (int *,int ) ;
 int * h2o_config_register_path (TYPE_10__*,int ,int ) ;
 int h2o_configurator_errprintf (int *,TYPE_3__*,char*) ;
 int qsort (TYPE_6__*,size_t,int,int (*) (void const*,void const*)) ;
 scalar_t__ sort_from_longer_paths ;
 scalar_t__ strlen (int ) ;
 int yoml_free (TYPE_3__*,int *) ;

__attribute__((used)) static int on_config_paths(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    size_t i;


    for (i = 0; i != node->data.mapping.size; ++i) {
        yoml_t *key = node->data.mapping.elements[i].key;
        if (key->type != YOML_TYPE_SCALAR) {
            h2o_configurator_errprintf(cmd, key, "key (representing the virtual path) must be a string");
            return -1;
        }
        if (strlen(key->data.scalar) == 0) {
            h2o_configurator_errprintf(cmd, key, "key (representing the virtual path) must not be an empty string");
            return -1;
        }
    }
    qsort(node->data.mapping.elements, node->data.mapping.size, sizeof(node->data.mapping.elements[0]),
          (int (*)(const void *, const void *))sort_from_longer_paths);

    for (i = 0; i != node->data.mapping.size; ++i) {
        yoml_t *key = node->data.mapping.elements[i].key, *value;
        if ((value = convert_path_config_node(cmd, node->data.mapping.elements[i].value)) == ((void*)0))
            return -1;
        h2o_pathconf_t *pathconf = h2o_config_register_path(ctx->hostconf, key->data.scalar, 0);
        int cmd_ret = config_path(ctx, pathconf, value);
        yoml_free(value, ((void*)0));
        if (cmd_ret != 0)
            return cmd_ret;
    }


    return config_path(ctx, &ctx->hostconf->fallback_path, ((void*)0));
}
