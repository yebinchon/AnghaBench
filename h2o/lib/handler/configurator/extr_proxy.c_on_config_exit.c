
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int yoml_t ;
struct proxy_configurator_t {TYPE_6__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_15__ {TYPE_4__* globalconf; int * hostconf; int * pathconf; } ;
typedef TYPE_7__ h2o_configurator_context_t ;
struct TYPE_10__ {int ratio; int max_concurrent_strams; } ;
struct TYPE_13__ {int * headers_cmds; int keepalive_timeout; TYPE_2__ http2; int max_buffer_size; int first_byte_timeout; int connect_timeout; int io_timeout; } ;
struct TYPE_14__ {TYPE_5__ conf; int ssl_ctx; } ;
struct TYPE_9__ {int ratio; int max_concurrent_streams; } ;
struct TYPE_11__ {int global_socketpool; TYPE_1__ http2; int max_buffer_size; int keepalive_timeout; int first_byte_timeout; int connect_timeout; int io_timeout; } ;
struct TYPE_12__ {TYPE_3__ proxy; } ;


 int SSL_CTX_free (int ) ;
 int h2o_mem_release_shared (int *) ;
 int h2o_socketpool_set_ssl_ctx (int *,int ) ;
 int h2o_socketpool_set_timeout (int *,int ) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)_self;

    if (ctx->pathconf == ((void*)0) && ctx->hostconf == ((void*)0)) {

        ctx->globalconf->proxy.io_timeout = self->vars->conf.io_timeout;
        ctx->globalconf->proxy.connect_timeout = self->vars->conf.connect_timeout;
        ctx->globalconf->proxy.first_byte_timeout = self->vars->conf.first_byte_timeout;
        ctx->globalconf->proxy.keepalive_timeout = self->vars->conf.keepalive_timeout;
        ctx->globalconf->proxy.max_buffer_size = self->vars->conf.max_buffer_size;
        ctx->globalconf->proxy.http2.max_concurrent_streams = self->vars->conf.http2.max_concurrent_strams;
        ctx->globalconf->proxy.http2.ratio = self->vars->conf.http2.ratio;
        h2o_socketpool_set_ssl_ctx(&ctx->globalconf->proxy.global_socketpool, self->vars->ssl_ctx);
        h2o_socketpool_set_timeout(&ctx->globalconf->proxy.global_socketpool, self->vars->conf.keepalive_timeout);
    }
    SSL_CTX_free(self->vars->ssl_ctx);

    if (self->vars->conf.headers_cmds != ((void*)0))
        h2o_mem_release_shared(self->vars->conf.headers_cmds);

    --self->vars;
    return 0;
}
