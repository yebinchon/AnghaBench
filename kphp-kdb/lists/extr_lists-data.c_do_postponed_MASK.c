#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct postponed_operation {scalar_t__ size; struct postponed_operation* next; scalar_t__ E; scalar_t__ time; } ;
struct lev_generic {int dummy; } ;
struct TYPE_2__ {int tot_lists; } ;

/* Variables and functions */
 TYPE_1__ Header ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct lev_generic*,scalar_t__) ; 
 int metafile_mode ; 
 scalar_t__ now_override ; 
 struct postponed_operation** postponed ; 
 int /*<<< orphan*/  postponed_operations_performed ; 
 int postponed_replay ; 
 int /*<<< orphan*/  FUNC2 (struct postponed_operation*,scalar_t__) ; 

void FUNC3 (int x) {
  FUNC0 (0 <= x && x < Header.tot_lists);
  struct postponed_operation *E = postponed[x];
  if (E) {
    struct postponed_operation *G = E, *F;
    postponed_replay = 1;
    do {
      now_override = E->time;
      FUNC0 (E->size == FUNC1 ((struct lev_generic *)(E->E), E->size));
      now_override = 0;
      F = E;
      E = E->next;
      if (!(metafile_mode & 2)) {
        FUNC2 (F, F->size + sizeof (struct postponed_operation));
      }
      postponed_operations_performed ++;
    } while (G != E && F != E);
    postponed_replay = 0;
  }
  if (!(metafile_mode & 2)) {
    postponed[x] = 0;
  }
}