
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


 int assert (int) ;
 int mrb_gc_protect (int ,int ) ;
 int mrb_gc_unregister (int ,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value detach_receiver(struct st_h2o_mruby_redis_command_context_t *ctx, int protect)
{
    mrb_value ret = ctx->receiver;
    assert(!mrb_nil_p(ret));
    ctx->receiver = mrb_nil_value();
    mrb_gc_unregister(ctx->client->ctx->shared->mrb, ret);
    if (protect)
        mrb_gc_protect(ctx->client->ctx->shared->mrb, ret);
    return ret;
}
