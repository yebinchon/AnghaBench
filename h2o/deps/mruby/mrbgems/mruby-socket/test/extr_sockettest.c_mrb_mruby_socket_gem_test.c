
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_ARGS_NONE () ;
 int mrb_define_class_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (int *,char*) ;
 int mrb_sockettest_cygwin_p ;
 int mrb_sockettest_tmppath ;
 int mrb_sockettest_win_p ;

void
mrb_mruby_socket_gem_test(mrb_state* mrb)
{
  struct RClass *c = mrb_define_module(mrb, "SocketTest");
  mrb_define_class_method(mrb, c, "tmppath", mrb_sockettest_tmppath, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, c, "win?", mrb_sockettest_win_p, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, c, "cygwin?", mrb_sockettest_cygwin_p, MRB_ARGS_NONE());
}
