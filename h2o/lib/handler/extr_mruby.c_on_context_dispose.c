
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int super; } ;
typedef TYPE_1__ h2o_mruby_handler_t ;
typedef int h2o_mruby_context_t ;
typedef int h2o_handler_t ;
typedef int h2o_context_t ;


 int free (int *) ;
 int * h2o_context_get_handler_context (int *,int *) ;

__attribute__((used)) static void on_context_dispose(h2o_handler_t *_handler, h2o_context_t *ctx)
{
    h2o_mruby_handler_t *handler = (void *)_handler;
    h2o_mruby_context_t *handler_ctx = h2o_context_get_handler_context(ctx, &handler->super);

    if (handler_ctx == ((void*)0))
        return;

    free(handler_ctx);
}
