
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_8__ {int exc; } ;
typedef TYPE_2__ mrb_state ;
typedef int h2o_mruby_generator_t ;
struct TYPE_9__ {TYPE_1__* shared; } ;
typedef TYPE_3__ h2o_mruby_context_t ;
struct TYPE_7__ {TYPE_2__* mrb; } ;


 int * h2o_mruby_get_generator (TYPE_2__*,int ) ;
 int handle_exception (TYPE_3__*,int *) ;
 int mrb_ary_entry (int ,int) ;
 int mrb_nil_value () ;
 int mrb_obj_ptr (int ) ;

mrb_value send_error_callback(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args, int *run_again)
{
    mrb_state *mrb = ctx->shared->mrb;
    mrb->exc = mrb_obj_ptr(mrb_ary_entry(args, 0));
    h2o_mruby_generator_t *generator = h2o_mruby_get_generator(mrb, mrb_ary_entry(args, 1));
    handle_exception(ctx, generator);
    return mrb_nil_value();
}
