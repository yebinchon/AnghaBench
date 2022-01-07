
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int mrb_bool ;


 int E_ARGUMENT_ERROR ;
 int RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int * get_random_state (int *) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_ary_set (int *,int ,int,int ) ;
 size_t mrb_fixnum (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int*,int *,int **,int *) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_random_rand_seed (int *,int *) ;
 int mt_rand (int *) ;
 int mt_state_type ;

__attribute__((used)) static mrb_value
mrb_ary_sample(mrb_state *mrb, mrb_value ary)
{
  mrb_int n = 0;
  mrb_bool given;
  mt_state *random = ((void*)0);
  mrb_int len;

  mrb_get_args(mrb, "|i?d", &n, &given, &random, &mt_state_type);
  if (random == ((void*)0)) {
    random = get_random_state(mrb);
  }
  mrb_random_rand_seed(mrb, random);
  mt_rand(random);
  len = RARRAY_LEN(ary);
  if (!given) {
    switch (len) {
    case 0:
      return mrb_nil_value();
    case 1:
      return RARRAY_PTR(ary)[0];
    default:
      return RARRAY_PTR(ary)[mt_rand(random) % len];
    }
  }
  else {
    mrb_value result;
    mrb_int i, j;

    if (n < 0) mrb_raise(mrb, E_ARGUMENT_ERROR, "negative sample number");
    if (n > len) n = len;
    result = mrb_ary_new_capa(mrb, n);
    for (i=0; i<n; i++) {
      mrb_int r;

      for (;;) {
      retry:
        r = mt_rand(random) % len;

        for (j=0; j<i; j++) {
          if (mrb_fixnum(RARRAY_PTR(result)[j]) == r) {
            goto retry;
          }
        }
        break;
      }
      mrb_ary_push(mrb, result, mrb_fixnum_value(r));
    }
    for (i=0; i<n; i++) {
      mrb_ary_set(mrb, result, i, RARRAY_PTR(ary)[mrb_fixnum(RARRAY_PTR(result)[i])]);
    }
    return result;
  }
}
