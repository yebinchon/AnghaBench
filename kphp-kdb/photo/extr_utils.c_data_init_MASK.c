#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  data_functions ;
struct TYPE_3__ {int objects_n; int /*<<< orphan*/  restore_info; int /*<<< orphan*/  dyn_snapshots; int /*<<< orphan*/  prm; int /*<<< orphan*/  hidden_state; int /*<<< orphan*/  id_to_local_id; scalar_t__ new_objects_n; int /*<<< orphan*/ * objects_offset; int /*<<< orphan*/ * objects; int /*<<< orphan*/ * func; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (data *d, data_functions *f) {
  d->func = f;
  d->objects_n = -2;
  d->objects = NULL;
  d->objects_offset = NULL;
  d->new_objects_n = 0;
  FUNC1 (&d->id_to_local_id);
  FUNC1 (&d->hidden_state);
  //d->ids = NULL;
  //d->old_perm = NULL;
  FUNC0 (init, &d->prm);
  FUNC2 (&d->dyn_snapshots);
  FUNC2 (&d->restore_info);
}