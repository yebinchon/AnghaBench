
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int command; } ;
struct st_h2o_mruby_redis_command_context_t {TYPE_3__* client; TYPE_2__ refs; int receiver; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_8__ {TYPE_1__* shared; } ;
struct TYPE_7__ {TYPE_4__* ctx; } ;
struct TYPE_5__ {int * mrb; } ;


 int detach_receiver (struct st_h2o_mruby_redis_command_context_t*,int) ;
 int h2o_mruby_assert (int *) ;
 int h2o_mruby_run_fiber (TYPE_4__*,int ,int ,int *) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 scalar_t__ mrb_nil_p (int ) ;

__attribute__((used)) static void pass_reply(struct st_h2o_mruby_redis_command_context_t *ctx, mrb_value reply)
{
    mrb_state *mrb = ctx->client->ctx->shared->mrb;
    if (mrb_nil_p(ctx->receiver)) {
        mrb_funcall(mrb, ctx->refs.command, "_on_reply", 1, reply);
        h2o_mruby_assert(mrb);
    } else {
        h2o_mruby_run_fiber(ctx->client->ctx, detach_receiver(ctx, 1), reply, ((void*)0));
    }
}
