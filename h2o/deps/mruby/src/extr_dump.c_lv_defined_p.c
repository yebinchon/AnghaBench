
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlen; struct TYPE_3__** reps; scalar_t__ lv; } ;
typedef TYPE_1__ mrb_irep ;
typedef scalar_t__ mrb_bool ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static mrb_bool
lv_defined_p(mrb_irep *irep)
{
  int i;

  if (irep->lv) { return TRUE; }

  for (i = 0; i < irep->rlen; ++i) {
    if (lv_defined_p(irep->reps[i])) { return TRUE; }
  }

  return FALSE;
}
