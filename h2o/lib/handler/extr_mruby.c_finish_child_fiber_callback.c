
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int h2o_mruby_context_t ;


 int mrb_nil_value () ;

mrb_value finish_child_fiber_callback(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                      int *run_again)
{

    return mrb_nil_value();
}
