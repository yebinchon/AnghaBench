
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kernel_module; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ARG (int,int) ;
 int f_eval ;
 int f_instance_eval ;
 int mrb_define_method (TYPE_1__*,int ,char*,int ,int ) ;
 int mrb_define_module_function (TYPE_1__*,int ,char*,int ,int ) ;

void
mrb_mruby_eval_gem_init(mrb_state* mrb)
{
  mrb_define_module_function(mrb, mrb->kernel_module, "eval", f_eval, MRB_ARGS_ARG(1, 3));
  mrb_define_method(mrb, mrb->kernel_module, "instance_eval", f_instance_eval, MRB_ARGS_ARG(1, 2));
}
