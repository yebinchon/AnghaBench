
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rp_handler_t {int sockpool; int super; } ;
struct rp_handler_context_t {int * client_ctx; } ;
typedef int h2o_handler_t ;
struct TYPE_4__ {int loop; } ;
typedef TYPE_1__ h2o_context_t ;


 int free (int *) ;
 struct rp_handler_context_t* h2o_context_get_handler_context (TYPE_1__*,int *) ;
 int h2o_socketpool_unregister_loop (int ,int ) ;

__attribute__((used)) static void on_context_dispose(h2o_handler_t *_self, h2o_context_t *ctx)
{
    struct rp_handler_t *self = (void *)_self;
    struct rp_handler_context_t *handler_ctx = h2o_context_get_handler_context(ctx, &self->super);

    if (handler_ctx->client_ctx != ((void*)0))
        free(handler_ctx->client_ctx);

    h2o_socketpool_unregister_loop(self->sockpool, ctx->loop);
}
