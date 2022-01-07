
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct postponed_operation {scalar_t__ size; struct postponed_operation* next; } ;
struct TYPE_2__ {int tot_lists; } ;


 TYPE_1__ Header ;
 int assert (int) ;
 struct postponed_operation** postponed ;
 scalar_t__ postponed_replay ;
 int zfree (struct postponed_operation*,scalar_t__) ;

void clear_postponed (int x) {
  assert (0 <= x && x < Header.tot_lists);
  if (postponed_replay) {
    return;
  }
  struct postponed_operation *E = postponed[x];
  if (E) {
    struct postponed_operation *G = E, *F;
    do {
      F = E;
      E = E->next;
      zfree (F, F->size + sizeof (struct postponed_operation));
    } while (G != E && F != E);
  }
  postponed[x] = 0;
}
