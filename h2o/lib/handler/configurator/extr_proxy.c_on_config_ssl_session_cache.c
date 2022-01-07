
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int scalar; } ;
struct TYPE_17__ {int type; TYPE_1__ data; } ;
typedef TYPE_3__ yoml_t ;
typedef int uint64_t ;
struct proxy_configurator_t {TYPE_2__* vars; } ;
typedef int h2o_configurator_context_t ;
struct TYPE_18__ {scalar_t__ configurator; } ;
typedef TYPE_4__ h2o_configurator_command_t ;
typedef int h2o_cache_t ;
struct TYPE_16__ {int ssl_ctx; } ;


 size_t H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY ;
 int H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION ;


 int * create_ssl_session_cache (size_t,int) ;
 size_t h2o_cache_get_capacity (int *) ;
 int h2o_cache_get_duration (int *) ;
 int h2o_configurator_errprintf (TYPE_4__*,TYPE_3__*,char*) ;
 int h2o_configurator_parse_mapping (TYPE_4__*,TYPE_3__*,char*,int *,TYPE_3__***,TYPE_3__***) ;
 int h2o_configurator_scanf (TYPE_4__*,TYPE_3__*,char*,...) ;
 int * h2o_socket_ssl_get_session_cache (int ) ;
 int strcasecmp (int ,char*) ;
 int update_ssl_ctx (int *,int *,int,int **) ;

__attribute__((used)) static int on_config_ssl_session_cache(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;
    size_t capacity = 0;
    uint64_t duration = 0;
    h2o_cache_t *current_cache = h2o_socket_ssl_get_session_cache(self->vars->ssl_ctx);

    switch (node->type) {
    case 128:
        if (strcasecmp(node->data.scalar, "OFF") == 0) {
            if (current_cache != ((void*)0)) {

                h2o_cache_t *empty_cache = ((void*)0);
                update_ssl_ctx(&self->vars->ssl_ctx, ((void*)0), -1, &empty_cache);
            }
            return 0;
        } else if (strcasecmp(node->data.scalar, "ON") == 0) {

            capacity = H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY;
            duration = H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION;
        } else {
            h2o_configurator_errprintf(cmd, node, "scalar argument must be either of: `OFF`, `ON`");
            return -1;
        }
        break;
    case 129: {
        yoml_t **capacity_node, **lifetime_node;
        if (h2o_configurator_parse_mapping(cmd, node, "capacity:*,lifetime:*", ((void*)0), &capacity_node, &lifetime_node) != 0)
            return -1;
        if (h2o_configurator_scanf(cmd, *capacity_node, "%zu", &capacity) != 0)
            return -1;
        if (capacity == 0) {
            h2o_configurator_errprintf(cmd, *capacity_node, "capacity must be greater than zero");
            return -1;
        }
        unsigned lifetime = 0;
        if (h2o_configurator_scanf(cmd, *lifetime_node, "%u", &lifetime) != 0)
            return -1;
        if (lifetime == 0) {
            h2o_configurator_errprintf(cmd, *lifetime_node, "lifetime must be greater than zero");
            return -1;
        }
        duration = (uint64_t)lifetime * 1000;
    } break;
    default:
        h2o_configurator_errprintf(cmd, node, "node must be a scalar or a mapping");
        return -1;
    }

    if (current_cache != ((void*)0)) {
        size_t current_capacity = h2o_cache_get_capacity(current_cache);
        uint64_t current_duration = h2o_cache_get_duration(current_cache);
        if (capacity == current_capacity && duration == current_duration) {

            return 0;
        }
    }

    h2o_cache_t *new_cache = create_ssl_session_cache(capacity, duration);
    update_ssl_ctx(&self->vars->ssl_ctx, ((void*)0), -1, &new_cache);
    return 0;
}
