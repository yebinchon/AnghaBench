#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dyn_object ;
struct TYPE_8__ {int /*<<< orphan*/  dyn_snapshots; int /*<<< orphan*/  hidden_state; int /*<<< orphan*/  id_to_local_id; int /*<<< orphan*/  prm; } ;
typedef  TYPE_1__ data ;
struct TYPE_9__ {int /*<<< orphan*/  (* free_dyn ) (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ;} ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  del ; 
 int /*<<< orphan*/  get_i ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int FUNC9 (data *d, int id) {
//  dbg ("DATA_DEL %d\n", id);
  int local_id = FUNC2 (d, id);
  if (local_id < 0) {
    return -1;
  }

  //*map_int_int_add (&d->new_id_to_i, id) = -1;
  int pos = FUNC3 (d, local_id);
  if (pos >= 0) {
    FUNC1 (del, &d->prm, pos);

    int prev_local_id = pos == 0 ? -1 : FUNC1 (get_i, &d->prm, pos - 1);
    FUNC4 (d, prev_local_id, local_id);
  }

  FUNC5 (&d->id_to_local_id, id, -1);

  //TODO: lazy_set
  FUNC5 (&d->hidden_state, id, 0);

  dyn_object **dyn_obj = (dyn_object **)FUNC7 (&d->dyn_snapshots, local_id + 1);
  if (dyn_obj != NULL) {
    FUNC0(d)->free_dyn (NULL, dyn_obj);
    FUNC6 (&d->dyn_snapshots, local_id + 1);
  }

  return 0;
}