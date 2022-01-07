
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int seed; int has_seed; scalar_t__ mti; } ;
typedef TYPE_1__ mt_state ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ DATA_PTR (int ) ;
 int FALSE ;
 scalar_t__ N ;
 int TRUE ;
 int get_opt (int *) ;
 int mrb_assert (int ) ;
 int mrb_data_init (int ,TYPE_1__*,int *) ;
 int mrb_fixnum (int ) ;
 int mrb_fixnum_p (int ) ;
 int mrb_free (int *,TYPE_1__*) ;
 scalar_t__ mrb_malloc (int *,int) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_random_mt_srand (int *,TYPE_1__*,int ) ;
 int mt_state_type ;

__attribute__((used)) static mrb_value
mrb_random_init(mrb_state *mrb, mrb_value self)
{
  mrb_value seed;
  mt_state *t;

  seed = get_opt(mrb);


  t = (mt_state*)DATA_PTR(self);
  if (t) {
    mrb_free(mrb, t);
  }
  mrb_data_init(self, ((void*)0), &mt_state_type);

  t = (mt_state *)mrb_malloc(mrb, sizeof(mt_state));
  t->mti = N + 1;

  seed = mrb_random_mt_srand(mrb, t, seed);
  if (mrb_nil_p(seed)) {
    t->has_seed = FALSE;
  }
  else {
    mrb_assert(mrb_fixnum_p(seed));
    t->has_seed = TRUE;
    t->seed = mrb_fixnum(seed);
  }

  mrb_data_init(self, t, &mt_state_type);

  return self;
}
