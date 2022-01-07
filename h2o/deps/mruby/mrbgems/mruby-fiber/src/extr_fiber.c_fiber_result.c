
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int const mrb_ary_new_from_values (int *,int,int const*) ;
 int const mrb_nil_value () ;

__attribute__((used)) static mrb_value
fiber_result(mrb_state *mrb, const mrb_value *a, mrb_int len)
{
  if (len == 0) return mrb_nil_value();
  if (len == 1) return a[0];
  return mrb_ary_new_from_values(mrb, len, a);
}
