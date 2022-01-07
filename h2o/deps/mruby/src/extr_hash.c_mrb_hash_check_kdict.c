
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ htable ;


 TYPE_1__* RHASH_TBL (int ) ;
 int check_kdict_i ;
 int ht_foreach (int *,TYPE_1__*,int ,int *) ;

void
mrb_hash_check_kdict(mrb_state *mrb, mrb_value self)
{
  htable *t;

  t = RHASH_TBL(self);
  if (!t || t->size == 0) return;
  ht_foreach(mrb, t, check_kdict_i, ((void*)0));
}
