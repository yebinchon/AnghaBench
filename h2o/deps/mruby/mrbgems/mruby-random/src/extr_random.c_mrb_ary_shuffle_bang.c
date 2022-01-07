
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int * get_random_state (int *) ;
 int mrb_ary_modify (int *,int ) ;
 int mrb_ary_ptr (int ) ;
 size_t mrb_fixnum (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int **,int *) ;
 int mrb_random_mt_rand (int *,int *,int ) ;
 int mrb_random_rand_seed (int *,int *) ;
 int mt_state_type ;

__attribute__((used)) static mrb_value
mrb_ary_shuffle_bang(mrb_state *mrb, mrb_value ary)
{
  mrb_int i;
  mt_state *random = ((void*)0);

  if (RARRAY_LEN(ary) > 1) {
    mrb_get_args(mrb, "|d", &random, &mt_state_type);

    if (random == ((void*)0)) {
      random = get_random_state(mrb);
    }
    mrb_random_rand_seed(mrb, random);

    mrb_ary_modify(mrb, mrb_ary_ptr(ary));

    for (i = RARRAY_LEN(ary) - 1; i > 0; i--) {
      mrb_int j;
      mrb_value *ptr = RARRAY_PTR(ary);
      mrb_value tmp;


      j = mrb_fixnum(mrb_random_mt_rand(mrb, random, mrb_fixnum_value(RARRAY_LEN(ary))));

      tmp = ptr[i];
      ptr[i] = ptr[j];
      ptr[j] = tmp;
    }
  }

  return ary;
}
