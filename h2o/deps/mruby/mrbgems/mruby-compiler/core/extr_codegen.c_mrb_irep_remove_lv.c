
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int rlen; struct TYPE_3__** reps; int * lv; } ;
typedef TYPE_1__ mrb_irep ;


 int mrb_free (int *,int *) ;

void
mrb_irep_remove_lv(mrb_state *mrb, mrb_irep *irep)
{
  int i;

  if (irep->lv) {
    mrb_free(mrb, irep->lv);
    irep->lv = ((void*)0);
  }

  for (i = 0; i < irep->rlen; ++i) {
    mrb_irep_remove_lv(mrb, irep->reps[i]);
  }
}
