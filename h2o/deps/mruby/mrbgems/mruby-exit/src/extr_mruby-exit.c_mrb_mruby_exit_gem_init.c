
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kernel_module; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_OPT (int) ;
 int f_exit ;
 int mrb_define_method (TYPE_1__*,int ,char*,int ,int ) ;

void
mrb_mruby_exit_gem_init(mrb_state* mrb)
{
  mrb_define_method(mrb, mrb->kernel_module, "exit", f_exit, MRB_ARGS_OPT(1));
}
