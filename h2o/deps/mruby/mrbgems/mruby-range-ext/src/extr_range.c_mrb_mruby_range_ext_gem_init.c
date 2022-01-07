
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 struct RClass* mrb_class_get (int *,char*) ;
 int mrb_define_method (int *,struct RClass*,char*,int ,int ) ;
 int range_cover ;
 int range_last ;
 int range_size ;

void
mrb_mruby_range_ext_gem_init(mrb_state* mrb)
{
  struct RClass * s = mrb_class_get(mrb, "Range");

  mrb_define_method(mrb, s, "cover?", range_cover, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "last", range_last, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, s, "size", range_size, MRB_ARGS_NONE());
}
