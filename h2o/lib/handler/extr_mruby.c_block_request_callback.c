
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_5__ {int blocking_reqs; int proc; TYPE_1__* shared; } ;
typedef TYPE_2__ h2o_mruby_context_t ;
struct TYPE_4__ {int * mrb; } ;


 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_ary_set (int *,int ,int,int ) ;
 int mrb_nil_value () ;

mrb_value block_request_callback(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args, int *run_again)
{
    mrb_state *mrb = ctx->shared->mrb;
    mrb_value blocking_req = mrb_ary_new_capa(mrb, 2);
    mrb_ary_set(mrb, blocking_req, 0, ctx->proc);
    mrb_ary_set(mrb, blocking_req, 1, input);
    mrb_ary_push(mrb, ctx->blocking_reqs, blocking_req);
    return mrb_nil_value();
}
