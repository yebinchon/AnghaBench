
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int scalar; } ;
struct TYPE_12__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int h2o_url_t ;
typedef int h2o_socketpool_target_t ;
struct TYPE_13__ {unsigned int weight_m1; int member_0; } ;
typedef TYPE_3__ h2o_socketpool_target_conf_t ;
typedef int h2o_configurator_command_t ;


 unsigned int H2O_SOCKETPOOL_TARGET_MAX_WEIGHT ;
 int SIZE_MAX ;


 int h2o_configurator_errprintf (int *,TYPE_2__*,char*,...) ;
 int h2o_configurator_parse_mapping (int *,TYPE_2__*,char*,char*,TYPE_2__***,TYPE_2__***) ;
 int h2o_configurator_scanf (int *,TYPE_2__*,char*,unsigned int*) ;
 int * h2o_socketpool_create_target (int *,TYPE_3__*) ;
 scalar_t__ h2o_url_parse (int ,int ,int *) ;

__attribute__((used)) static h2o_socketpool_target_t *parse_backend(h2o_configurator_command_t *cmd, yoml_t *backend)
{
    yoml_t **url_node;
    h2o_socketpool_target_conf_t lb_per_target_conf = {0};

    switch (backend->type) {
    case 128:
        url_node = &backend;
        break;
    case 129: {
        yoml_t **weight_node;
        if (h2o_configurator_parse_mapping(cmd, backend, "url:s", "weight:*", &url_node, &weight_node) != 0)
            return ((void*)0);
        if (weight_node != ((void*)0)) {
            unsigned weight;
            if (h2o_configurator_scanf(cmd, *weight_node, "%u", &weight) != 0)
                return ((void*)0);
            if (!(1 <= weight && weight <= H2O_SOCKETPOOL_TARGET_MAX_WEIGHT)) {
                h2o_configurator_errprintf(cmd, *weight_node, "weight must be an integer in range 1 - 256");
                return ((void*)0);
            }
            lb_per_target_conf.weight_m1 = weight - 1;
        }
    } break;
    default:
        h2o_configurator_errprintf(cmd, backend,
                                   "items of arguments passed to proxy.reverse.url must be either a scalar or a mapping");
        return ((void*)0);
    }

    h2o_url_t url;
    if (h2o_url_parse((*url_node)->data.scalar, SIZE_MAX, &url) != 0) {
        h2o_configurator_errprintf(cmd, *url_node, "failed to parse URL: %s\n", (*url_node)->data.scalar);
        return ((void*)0);
    }
    return h2o_socketpool_create_target(&url, &lb_per_target_conf);
}
