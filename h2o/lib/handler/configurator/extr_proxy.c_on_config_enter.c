
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int yoml_t ;
struct proxy_configurator_t {TYPE_4__* vars; scalar_t__ first_byte_timeout_set; scalar_t__ connect_timeout_set; } ;
typedef int h2o_configurator_t ;
struct TYPE_7__ {int * hostconf; int * pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
typedef int h2o_cache_t ;
struct TYPE_6__ {int * headers_cmds; } ;
struct TYPE_8__ {int ssl_ctx; TYPE_1__ conf; } ;


 int H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY ;
 int H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION ;
 int SSL_CTX_load_verify_locations (int ,char*,int *) ;
 int SSL_CTX_set_verify (int ,int,int *) ;
 int SSL_CTX_up_ref (int ) ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_PEER ;
 int create_ssl_ctx () ;
 int * create_ssl_session_cache (int ,int ) ;
 int free (char*) ;
 char* h2o_configurator_get_cmd_path (char*) ;
 int h2o_error_printf (char*,char*) ;
 int h2o_mem_addref_shared (int *) ;
 int h2o_socket_ssl_set_session_cache (int ,int *) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;

__attribute__((used)) static int on_config_enter(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)_self;

    memcpy(self->vars + 1, self->vars, sizeof(*self->vars));
    if (self->vars[1].conf.headers_cmds != ((void*)0))
        h2o_mem_addref_shared(self->vars[1].conf.headers_cmds);
    ++self->vars;
    self->connect_timeout_set = 0;
    self->first_byte_timeout_set = 0;

    if (ctx->pathconf == ((void*)0) && ctx->hostconf == ((void*)0)) {

        self->vars->ssl_ctx = create_ssl_ctx();
        char *ca_bundle = h2o_configurator_get_cmd_path("share/h2o/ca-bundle.crt");
        if (SSL_CTX_load_verify_locations(self->vars->ssl_ctx, ca_bundle, ((void*)0)) != 1)
            h2o_error_printf("Warning: failed to load the default certificates file at %s. Proxying to HTTPS servers may fail.\n",
                             ca_bundle);
        free(ca_bundle);
        SSL_CTX_set_verify(self->vars->ssl_ctx, SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT, ((void*)0));
        h2o_cache_t *ssl_session_cache =
            create_ssl_session_cache(H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY, H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION);
        h2o_socket_ssl_set_session_cache(self->vars->ssl_ctx, ssl_session_cache);
    } else {
        SSL_CTX_up_ref(self->vars->ssl_ctx);
    }

    return 0;
}
