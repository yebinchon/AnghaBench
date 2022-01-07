
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kernel_module; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_REQ (int) ;
 int mrb_define_method (TYPE_1__*,int ,char*,int ,int ) ;
 int mrb_f_sleep ;
 int mrb_f_usleep ;

void
mrb_mruby_sleep_gem_init(mrb_state *mrb)
{
    mrb_define_method(mrb, mrb->kernel_module, "sleep", mrb_f_sleep, MRB_ARGS_REQ(1));
    mrb_define_method(mrb, mrb->kernel_module, "usleep", mrb_f_usleep, MRB_ARGS_REQ(1));
}
