
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {int rlen; struct TYPE_4__** reps; } ;
typedef TYPE_1__ mrb_irep ;


 int codedump (int *,TYPE_1__*) ;

__attribute__((used)) static void
codedump_recur(mrb_state *mrb, mrb_irep *irep)
{
  int i;

  codedump(mrb, irep);
  for (i=0; i<irep->rlen; i++) {
    codedump_recur(mrb, irep->reps[i]);
  }
}
