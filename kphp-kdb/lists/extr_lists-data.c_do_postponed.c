
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct postponed_operation {scalar_t__ size; struct postponed_operation* next; scalar_t__ E; scalar_t__ time; } ;
struct lev_generic {int dummy; } ;
struct TYPE_2__ {int tot_lists; } ;


 TYPE_1__ Header ;
 int assert (int) ;
 scalar_t__ lists_replay_logevent (struct lev_generic*,scalar_t__) ;
 int metafile_mode ;
 scalar_t__ now_override ;
 struct postponed_operation** postponed ;
 int postponed_operations_performed ;
 int postponed_replay ;
 int zfree (struct postponed_operation*,scalar_t__) ;

void do_postponed (int x) {
  assert (0 <= x && x < Header.tot_lists);
  struct postponed_operation *E = postponed[x];
  if (E) {
    struct postponed_operation *G = E, *F;
    postponed_replay = 1;
    do {
      now_override = E->time;
      assert (E->size == lists_replay_logevent ((struct lev_generic *)(E->E), E->size));
      now_override = 0;
      F = E;
      E = E->next;
      if (!(metafile_mode & 2)) {
        zfree (F, F->size + sizeof (struct postponed_operation));
      }
      postponed_operations_performed ++;
    } while (G != E && F != E);
    postponed_replay = 0;
  }
  if (!(metafile_mode & 2)) {
    postponed[x] = 0;
  }
}
