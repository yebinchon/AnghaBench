
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_8__ {int eStandardError_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int M_E ;
 int M_PI ;
 double atan (double) ;
 int exp (double) ;
 int math_acos ;
 int math_acosh ;
 int math_asin ;
 int math_asinh ;
 int math_atan ;
 int math_atan2 ;
 int math_atanh ;
 int math_cbrt ;
 int math_cos ;
 int math_cosh ;
 int math_erf ;
 int math_erfc ;
 int math_exp ;
 int math_frexp ;
 int math_hypot ;
 int math_ldexp ;
 int math_log ;
 int math_log10 ;
 int math_log2 ;
 int math_sin ;
 int math_sinh ;
 int math_sqrt ;
 int math_tan ;
 int math_tanh ;
 int mrb_define_class_under (TYPE_1__*,struct RClass*,char*,int ) ;
 int mrb_define_const (TYPE_1__*,struct RClass*,char*,int ) ;
 struct RClass* mrb_define_module (TYPE_1__*,char*) ;
 int mrb_define_module_function (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_float_value (TYPE_1__*,int) ;

void
mrb_mruby_math_gem_init(mrb_state* mrb)
{
  struct RClass *mrb_math;
  mrb_math = mrb_define_module(mrb, "Math");

  mrb_define_class_under(mrb, mrb_math, "DomainError", mrb->eStandardError_class);




  mrb_define_const(mrb, mrb_math, "PI", mrb_float_value(mrb, atan(1.0)*4.0));





  mrb_define_const(mrb, mrb_math, "E", mrb_float_value(mrb, exp(1.0)));





  mrb_define_const(mrb, mrb_math, "TOLERANCE", mrb_float_value(mrb, 1e-12));


  mrb_define_module_function(mrb, mrb_math, "sin", math_sin, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "cos", math_cos, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "tan", math_tan, MRB_ARGS_REQ(1));

  mrb_define_module_function(mrb, mrb_math, "asin", math_asin, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "acos", math_acos, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "atan", math_atan, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "atan2", math_atan2, MRB_ARGS_REQ(2));

  mrb_define_module_function(mrb, mrb_math, "sinh", math_sinh, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "cosh", math_cosh, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "tanh", math_tanh, MRB_ARGS_REQ(1));

  mrb_define_module_function(mrb, mrb_math, "asinh", math_asinh, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "acosh", math_acosh, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "atanh", math_atanh, MRB_ARGS_REQ(1));

  mrb_define_module_function(mrb, mrb_math, "exp", math_exp, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "log", math_log, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_module_function(mrb, mrb_math, "log2", math_log2, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "log10", math_log10, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "sqrt", math_sqrt, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "cbrt", math_cbrt, MRB_ARGS_REQ(1));

  mrb_define_module_function(mrb, mrb_math, "frexp", math_frexp, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "ldexp", math_ldexp, MRB_ARGS_REQ(2));

  mrb_define_module_function(mrb, mrb_math, "hypot", math_hypot, MRB_ARGS_REQ(2));

  mrb_define_module_function(mrb, mrb_math, "erf", math_erf, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, mrb_math, "erfc", math_erfc, MRB_ARGS_REQ(1));
}
