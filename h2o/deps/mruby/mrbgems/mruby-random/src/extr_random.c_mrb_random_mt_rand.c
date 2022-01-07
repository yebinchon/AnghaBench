
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_float_value (int *,int ) ;
 int mt_rand (int *) ;
 int mt_rand_real (int *) ;

__attribute__((used)) static mrb_value
mrb_random_mt_rand(mrb_state *mrb, mt_state *t, mrb_value max)
{
  mrb_value value;

  if (mrb_fixnum(max) == 0) {
    value = mrb_float_value(mrb, mt_rand_real(t));
  }
  else {
    value = mrb_fixnum_value(mt_rand(t) % mrb_fixnum(max));
  }

  return value;
}
