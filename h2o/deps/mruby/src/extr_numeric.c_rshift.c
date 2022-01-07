
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_int ;


 int NUMERIC_SHIFT_WIDTH_MAX ;
 int mrb_fixnum_value (int) ;

__attribute__((used)) static mrb_value
rshift(mrb_int val, mrb_int width)
{
  if (width < 0) {
    return mrb_fixnum_value(0);
  }
  if (width >= NUMERIC_SHIFT_WIDTH_MAX) {
    if (val < 0) {
      return mrb_fixnum_value(-1);
    }
    return mrb_fixnum_value(0);
  }
  return mrb_fixnum_value(val >> width);
}
