
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ mrb_fixnum (int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 scalar_t__ mrb_nil_p (int ) ;
 scalar_t__ mt_rand (int *) ;
 int mt_srand (int *,unsigned int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static mrb_value
mrb_random_mt_srand(mrb_state *mrb, mt_state *t, mrb_value seed)
{
  if (mrb_nil_p(seed)) {
    seed = mrb_fixnum_value((mrb_int)(time(((void*)0)) + mt_rand(t)));
    if (mrb_fixnum(seed) < 0) {
      seed = mrb_fixnum_value(0 - mrb_fixnum(seed));
    }
  }

  mt_srand(t, (unsigned) mrb_fixnum(seed));

  return seed;
}
