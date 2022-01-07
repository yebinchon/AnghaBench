
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_float ;


 scalar_t__ mrb_fixnum (int ) ;
 int mrb_float_value (int *,int ) ;

__attribute__((used)) static mrb_value
fix_to_f(mrb_state *mrb, mrb_value num)
{
  return mrb_float_value(mrb, (mrb_float)mrb_fixnum(num));
}
