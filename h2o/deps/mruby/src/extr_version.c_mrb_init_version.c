
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int MRUBY_COPYRIGHT ;
 int MRUBY_DESCRIPTION ;
 int MRUBY_RELEASE_DATE ;
 int MRUBY_RELEASE_NO ;
 int MRUBY_RUBY_ENGINE ;
 int MRUBY_RUBY_VERSION ;
 int MRUBY_VERSION ;
 int mrb_define_global_const (int *,char*,int ) ;
 int mrb_fixnum_value (int ) ;
 int mrb_str_new_lit (int *,int ) ;

void
mrb_init_version(mrb_state* mrb)
{
  mrb_value mruby_version = mrb_str_new_lit(mrb, MRUBY_VERSION);

  mrb_define_global_const(mrb, "RUBY_VERSION", mrb_str_new_lit(mrb, MRUBY_RUBY_VERSION));
  mrb_define_global_const(mrb, "RUBY_ENGINE", mrb_str_new_lit(mrb, MRUBY_RUBY_ENGINE));
  mrb_define_global_const(mrb, "RUBY_ENGINE_VERSION", mruby_version);
  mrb_define_global_const(mrb, "MRUBY_VERSION", mruby_version);
  mrb_define_global_const(mrb, "MRUBY_RELEASE_NO", mrb_fixnum_value(MRUBY_RELEASE_NO));
  mrb_define_global_const(mrb, "MRUBY_RELEASE_DATE", mrb_str_new_lit(mrb, MRUBY_RELEASE_DATE));
  mrb_define_global_const(mrb, "MRUBY_DESCRIPTION", mrb_str_new_lit(mrb, MRUBY_DESCRIPTION));
  mrb_define_global_const(mrb, "MRUBY_COPYRIGHT", mrb_str_new_lit(mrb, MRUBY_COPYRIGHT));
}
