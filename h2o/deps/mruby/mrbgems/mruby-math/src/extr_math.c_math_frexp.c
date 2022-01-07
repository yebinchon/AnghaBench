
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_float ;


 int frexp (int ,int*) ;
 int mrb_assoc_new (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_float_value (int *,int ) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
math_frexp(mrb_state *mrb, mrb_value obj)
{
  mrb_float x;
  int exp;

  mrb_get_args(mrb, "f", &x);
  x = frexp(x, &exp);

  return mrb_assoc_new(mrb, mrb_float_value(mrb, x), mrb_fixnum_value(exp));
}
