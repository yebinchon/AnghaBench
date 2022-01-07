
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* kernel_module; struct RClass* proc_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_kernel_proc ;
 int mrb_proc_inspect ;
 int mrb_proc_lambda ;
 int mrb_proc_parameters ;
 int mrb_proc_source_location ;

void
mrb_mruby_proc_ext_gem_init(mrb_state* mrb)
{
  struct RClass *p = mrb->proc_class;
  mrb_define_method(mrb, p, "lambda?", mrb_proc_lambda, MRB_ARGS_NONE());
  mrb_define_method(mrb, p, "source_location", mrb_proc_source_location, MRB_ARGS_NONE());
  mrb_define_method(mrb, p, "to_s", mrb_proc_inspect, MRB_ARGS_NONE());
  mrb_define_method(mrb, p, "inspect", mrb_proc_inspect, MRB_ARGS_NONE());
  mrb_define_method(mrb, p, "parameters", mrb_proc_parameters, MRB_ARGS_NONE());

  mrb_define_class_method(mrb, mrb->kernel_module, "proc", mrb_kernel_proc, MRB_ARGS_NONE());
  mrb_define_method(mrb, mrb->kernel_module, "proc", mrb_kernel_proc, MRB_ARGS_NONE());
}
