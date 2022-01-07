
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_seed; } ;
typedef TYPE_1__ mt_state ;
typedef int mrb_state ;


 int mrb_nil_value () ;
 int mrb_random_mt_srand (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
mrb_random_rand_seed(mrb_state *mrb, mt_state *t)
{
  if (!t->has_seed) {
    mrb_random_mt_srand(mrb, t, mrb_nil_value());
  }
}
