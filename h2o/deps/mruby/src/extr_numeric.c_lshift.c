
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int mrb_float ;


 int INFINITY ;
 int MRB_INT_MAX ;
 int MRB_INT_MIN ;
 int NUMERIC_SHIFT_WIDTH_MAX ;
 int mrb_fixnum_value (int) ;
 int mrb_float_value (int *,int) ;

__attribute__((used)) static mrb_value
lshift(mrb_state *mrb, mrb_int val, mrb_int width)
{
  if (width < 0) {



    return mrb_float_value(mrb, INFINITY);

  }
  if (val > 0) {
    if ((width > NUMERIC_SHIFT_WIDTH_MAX) ||
        (val > (MRB_INT_MAX >> width))) {



      goto bit_overflow;

    }
    return mrb_fixnum_value(val << width);
  }
  else {
    if ((width > NUMERIC_SHIFT_WIDTH_MAX) ||
        (val < (MRB_INT_MIN >> width))) {



      goto bit_overflow;

    }
    return mrb_fixnum_value(val * ((mrb_int)1 << width));
  }


bit_overflow:
  {
    mrb_float f = (mrb_float)val;
    while (width--) {
      f *= 2;
    }
    return mrb_float_value(mrb, f);
  }

}
