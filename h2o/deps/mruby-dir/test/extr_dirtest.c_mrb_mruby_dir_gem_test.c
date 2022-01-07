
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_ARGS_NONE () ;
 int mrb_define_class_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (int *,char*) ;
 int mrb_dirtest_sandbox ;
 int mrb_dirtest_setup ;
 int mrb_dirtest_teardown ;

void
mrb_mruby_dir_gem_test(mrb_state *mrb)
{
  struct RClass *c = mrb_define_module(mrb, "DirTest");

  mrb_define_class_method(mrb, c, "sandbox", mrb_dirtest_sandbox, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, c, "setup", mrb_dirtest_setup, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, c, "teardown", mrb_dirtest_teardown, MRB_ARGS_NONE());
}
