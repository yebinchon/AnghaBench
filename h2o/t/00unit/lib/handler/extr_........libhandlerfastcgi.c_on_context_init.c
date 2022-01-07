
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_handler_t ;
struct TYPE_4__ {int sockpool; } ;
typedef TYPE_1__ h2o_fastcgi_handler_t ;
struct TYPE_5__ {int loop; } ;
typedef TYPE_2__ h2o_context_t ;


 int h2o_socketpool_register_loop (int *,int ) ;

__attribute__((used)) static void on_context_init(h2o_handler_t *_handler, h2o_context_t *ctx)
{
    h2o_fastcgi_handler_t *handler = (void *)_handler;
    h2o_socketpool_register_loop(&handler->sockpool, ctx->loop);
}
