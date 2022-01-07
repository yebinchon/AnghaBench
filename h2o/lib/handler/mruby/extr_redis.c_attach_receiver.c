
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_mruby_redis_command_context_t {TYPE_3__* client; int receiver; } ;
typedef int mrb_value ;
struct TYPE_6__ {TYPE_2__* ctx; } ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int mrb; } ;


 int assert (int ) ;
 int mrb_gc_register (int ,int ) ;
 int mrb_nil_p (int ) ;

__attribute__((used)) static void attach_receiver(struct st_h2o_mruby_redis_command_context_t *ctx, mrb_value receiver)
{
    assert(mrb_nil_p(ctx->receiver));
    ctx->receiver = receiver;
    mrb_gc_register(ctx->client->ctx->shared->mrb, receiver);
}
