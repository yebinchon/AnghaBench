#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* o_tree; } ;
typedef  TYPE_2__ list_t ;
typedef  int /*<<< orphan*/  list_id_t ;
struct TYPE_5__ {int delta; } ;

/* Variables and functions */
 int M_tot_entries ; 
 unsigned int SUBCATS ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

int FUNC4 (list_id_t list_id, int counter_id) {
  if (metafile_mode && FUNC2 (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = FUNC0 (list_id, 2);
  if (!L) {
    return -1;
  }

  FUNC3 (L);

  if ((unsigned) counter_id < SUBCATS) {
    return FUNC1 (counter_id);
  } else {
    return M_tot_entries + L->o_tree->delta;
  }
}