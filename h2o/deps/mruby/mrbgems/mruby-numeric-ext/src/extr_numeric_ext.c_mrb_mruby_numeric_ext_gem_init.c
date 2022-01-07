
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int mrb_define_method (int *,struct RClass*,char*,int ,int ) ;
 int mrb_int_allbits ;
 int mrb_int_anybits ;
 int mrb_int_chr ;
 int mrb_int_nobits ;
 struct RClass* mrb_module_get (int *,char*) ;

void
mrb_mruby_numeric_ext_gem_init(mrb_state* mrb)
{
  struct RClass *i = mrb_module_get(mrb, "Integral");

  mrb_define_method(mrb, i, "chr", mrb_int_chr, MRB_ARGS_NONE());
  mrb_define_method(mrb, i, "allbits?", mrb_int_allbits, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, i, "anybits?", mrb_int_anybits, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, i, "nobits?", mrb_int_nobits, MRB_ARGS_REQ(1));
}
