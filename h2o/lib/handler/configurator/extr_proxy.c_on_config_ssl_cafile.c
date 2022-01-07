
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int scalar; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
struct proxy_configurator_t {TYPE_1__* vars; } ;
typedef int h2o_configurator_context_t ;
struct TYPE_12__ {scalar_t__ configurator; } ;
typedef TYPE_4__ h2o_configurator_command_t ;
typedef int X509_STORE ;
struct TYPE_9__ {int ssl_ctx; } ;


 int ERR_print_errors_fp (int ) ;
 int X509_STORE_free (int *) ;
 int X509_STORE_load_locations (int *,int ,int *) ;
 int * X509_STORE_new () ;
 int h2o_configurator_errprintf (TYPE_4__*,TYPE_3__*,char*,int ) ;
 int stderr ;
 int update_ssl_ctx (int *,int *,int,int *) ;

__attribute__((used)) static int on_config_ssl_cafile(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;
    X509_STORE *store = X509_STORE_new();
    int ret = -1;

    if (X509_STORE_load_locations(store, node->data.scalar, ((void*)0)) == 1) {
        update_ssl_ctx(&self->vars->ssl_ctx, store, -1, ((void*)0));
        ret = 0;
    } else {
        h2o_configurator_errprintf(cmd, node, "failed to load certificates file:%s", node->data.scalar);
        ERR_print_errors_fp(stderr);
    }

    X509_STORE_free(store);
    return ret;
}
