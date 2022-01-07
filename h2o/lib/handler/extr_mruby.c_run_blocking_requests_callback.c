
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_9__ {int exc; } ;
typedef TYPE_2__ mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_10__ {int blocking_reqs; TYPE_1__* shared; } ;
typedef TYPE_3__ h2o_mruby_context_t ;
struct TYPE_8__ {TYPE_2__* mrb; } ;


 scalar_t__ RARRAY_LEN (int ) ;
 int h2o_mruby_run_fiber (TYPE_3__*,int ,int ,int *) ;
 int handle_exception (TYPE_3__*,int *) ;
 int mrb_ary_clear (TYPE_2__*,int ) ;
 int mrb_ary_entry (int ,int) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_ptr (int ) ;

mrb_value run_blocking_requests_callback(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                         int *run_again)
{
    mrb_state *mrb = ctx->shared->mrb;

    mrb_value exc = mrb_ary_entry(args, 0);
    if (!mrb_nil_p(exc)) {
        mrb->exc = mrb_obj_ptr(exc);
        handle_exception(ctx, ((void*)0));
    }

    mrb_int i;
    mrb_int len = RARRAY_LEN(ctx->blocking_reqs);
    for (i = 0; i != len; ++i) {
        mrb_value blocking_req = mrb_ary_entry(ctx->blocking_reqs, i);
        mrb_value blocking_req_resumer = mrb_ary_entry(blocking_req, 0);
        mrb_value blocking_req_input = mrb_ary_entry(blocking_req, 1);
        h2o_mruby_run_fiber(ctx, blocking_req_resumer, blocking_req_input, ((void*)0));
    }
    mrb_ary_clear(mrb, ctx->blocking_reqs);

    return mrb_nil_value();
}
