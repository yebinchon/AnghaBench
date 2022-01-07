
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_mruby_redis_command_context_t {int receiver; } ;
typedef int mrb_state ;


 int detach_receiver (struct st_h2o_mruby_redis_command_context_t*,int ) ;
 int free (struct st_h2o_mruby_redis_command_context_t*) ;
 int mrb_nil_p (int ) ;

__attribute__((used)) static void on_gc_dispose_command(mrb_state *mrb, void *_ctx)
{
    struct st_h2o_mruby_redis_command_context_t *ctx = _ctx;

    if (!mrb_nil_p(ctx->receiver)) {
        detach_receiver(ctx, 0);
    }
    free(ctx);
}
