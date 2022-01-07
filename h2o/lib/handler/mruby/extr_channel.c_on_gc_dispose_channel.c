
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_mruby_channel_context_t {int receivers; } ;
typedef int mrb_state ;


 int assert (int ) ;
 int free (struct st_h2o_mruby_channel_context_t*) ;
 int mrb_gc_unregister (int *,int ) ;

__attribute__((used)) static void on_gc_dispose_channel(mrb_state *mrb, void *_ctx)
{
    struct st_h2o_mruby_channel_context_t *ctx = _ctx;
    assert(ctx != ((void*)0));
    mrb_gc_unregister(mrb, ctx->receivers);
    free(ctx);
}
