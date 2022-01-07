
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;


struct TYPE_20__ {size_t size; TYPE_4__** elements; } ;
struct TYPE_21__ {int scalar; TYPE_1__ sequence; } ;
struct TYPE_23__ {int type; TYPE_2__ data; } ;
typedef TYPE_4__ yoml_t ;
struct proxy_configurator_t {TYPE_3__* vars; } ;
typedef int h2o_socketpool_target_t ;
typedef int h2o_socketpool_t ;
struct TYPE_24__ {int pathconf; } ;
typedef TYPE_5__ h2o_configurator_context_t ;
struct TYPE_25__ {scalar_t__ configurator; } ;
typedef TYPE_6__ h2o_configurator_command_t ;
typedef int h2o_balancer_t ;
struct TYPE_19__ {scalar_t__ keepalive_timeout; int * headers_cmds; scalar_t__ use_proxy_protocol; } ;
struct TYPE_22__ {TYPE_12__ conf; int ssl_ctx; } ;


 int SIZE_MAX ;



 int ** alloca (int) ;
 int * h2o_balancer_create_lc () ;
 int * h2o_balancer_create_rr () ;
 int h2o_configurator_errprintf (TYPE_6__*,TYPE_4__*,char*) ;
 int h2o_configurator_parse_mapping (TYPE_6__*,TYPE_4__*,char*,char*,TYPE_4__***,TYPE_4__***) ;
 int h2o_fatal (char*) ;
 int h2o_mem_addref_shared (int *) ;
 int * h2o_mem_alloc (int) ;
 int h2o_proxy_register_reverse_proxy (int ,TYPE_12__*,int *) ;
 int h2o_socketpool_init_specific (int *,int ,int **,size_t,int *) ;
 int h2o_socketpool_set_ssl_ctx (int *,int ) ;
 int h2o_socketpool_set_timeout (int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 int * parse_backend (TYPE_6__*,TYPE_4__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int on_config_reverse_url(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;

    yoml_t **backends, **balancer_conf = ((void*)0);
    size_t i, num_backends = 0;
    h2o_balancer_t *balancer = ((void*)0);


    switch (node->type) {
    case 129:
        backends = &node;
        num_backends = 1;
        break;
    case 128:
        backends = node->data.sequence.elements;
        num_backends = node->data.sequence.size;
        break;
    case 130:
        if (h2o_configurator_parse_mapping(cmd, node, "backends:*", "balancer:s", &backends, &balancer_conf) != 0)
            return -1;
        switch ((*backends)->type) {
        case 129:
            num_backends = 1;
            break;
        case 128:
            num_backends = (*backends)->data.sequence.size;
            backends = (*backends)->data.sequence.elements;
            break;
        default:
            h2o_configurator_errprintf(cmd, *backends, "value for the `backends` property must be either a scalar or a sequence");
            return -1;
        }
        break;
    default:
        h2o_fatal("unexpected node type");
        return -1;
    }
    if (num_backends == 0) {
        h2o_configurator_errprintf(cmd, node, "at least one backend url must be set");
        return -1;
    }


    if (balancer_conf != ((void*)0)) {
        if (strcmp((*balancer_conf)->data.scalar, "round-robin") == 0) {
            balancer = h2o_balancer_create_rr();
        } else if (strcmp((*balancer_conf)->data.scalar, "least-conn") == 0) {
            balancer = h2o_balancer_create_lc();
        } else {
            h2o_configurator_errprintf(
                cmd, node, "specified balancer is not supported. Currently supported ones are: round-robin, least-conn");
            return -1;
        }
    }


    h2o_socketpool_target_t **targets = alloca(sizeof(*targets) * num_backends);
    for (i = 0; i != num_backends; ++i)
        if ((targets[i] = parse_backend(cmd, backends[i])) == ((void*)0))
            return -1;

    if (self->vars->conf.keepalive_timeout != 0 && self->vars->conf.use_proxy_protocol) {
        h2o_configurator_errprintf(cmd, node,
                                   "please either set `proxy.use-proxy-protocol` to `OFF` or disable keep-alive by "
                                   "setting `proxy.timeout.keepalive` to zero; the features are mutually exclusive");
        return -1;
    }

    if (self->vars->conf.headers_cmds != ((void*)0))
        h2o_mem_addref_shared(self->vars->conf.headers_cmds);

    h2o_socketpool_t *sockpool = h2o_mem_alloc(sizeof(*sockpool));
    memset(sockpool, 0, sizeof(*sockpool));

    h2o_socketpool_init_specific(sockpool, SIZE_MAX , targets, num_backends, balancer);
    h2o_socketpool_set_timeout(sockpool, self->vars->conf.keepalive_timeout);
    h2o_socketpool_set_ssl_ctx(sockpool, self->vars->ssl_ctx);
    h2o_proxy_register_reverse_proxy(ctx->pathconf, &self->vars->conf, sockpool);
    return 0;
}
