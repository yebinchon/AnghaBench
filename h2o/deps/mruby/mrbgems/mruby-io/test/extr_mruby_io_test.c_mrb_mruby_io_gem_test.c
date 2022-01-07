
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int mrb_define_class_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (int *,char*) ;
 int mrb_io_test_file_cleanup ;
 int mrb_io_test_file_setup ;
 int mrb_io_test_io_cleanup ;
 int mrb_io_test_io_setup ;
 int mrb_io_test_mkdtemp ;
 int mrb_io_test_rmdir ;
 int mrb_io_win_p ;

void
mrb_mruby_io_gem_test(mrb_state* mrb)
{
  struct RClass *io_test = mrb_define_module(mrb, "MRubyIOTestUtil");
  mrb_define_class_method(mrb, io_test, "io_test_setup", mrb_io_test_io_setup, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, io_test, "io_test_cleanup", mrb_io_test_io_cleanup, MRB_ARGS_NONE());

  mrb_define_class_method(mrb, io_test, "file_test_setup", mrb_io_test_file_setup, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, io_test, "file_test_cleanup", mrb_io_test_file_cleanup, MRB_ARGS_NONE());

  mrb_define_class_method(mrb, io_test, "mkdtemp", mrb_io_test_mkdtemp, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, io_test, "rmdir", mrb_io_test_rmdir, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, io_test, "win?", mrb_io_win_p, MRB_ARGS_NONE());
}
