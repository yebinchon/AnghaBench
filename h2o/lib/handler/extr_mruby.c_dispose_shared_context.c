
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mrb; } ;
typedef TYPE_1__ h2o_mruby_shared_context_t ;


 int free (TYPE_1__*) ;
 int mrb_close (int ) ;

__attribute__((used)) static void dispose_shared_context(void *data)
{
    if (data == ((void*)0))
        return;
    h2o_mruby_shared_context_t *shared_ctx = (h2o_mruby_shared_context_t *)data;
    mrb_close(shared_ctx->mrb);
    free(shared_ctx);
}
