
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_float ;


 int atan2 (int ,int ) ;
 int mrb_float_value (int *,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;

__attribute__((used)) static mrb_value
math_atan2(mrb_state *mrb, mrb_value obj)
{
  mrb_float x, y;

  mrb_get_args(mrb, "ff", &x, &y);
  x = atan2(x, y);

  return mrb_float_value(mrb, x);
}
