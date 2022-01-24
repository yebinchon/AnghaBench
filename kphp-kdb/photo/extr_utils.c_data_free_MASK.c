#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  restore_info; int /*<<< orphan*/  dyn_snapshots; int /*<<< orphan*/  prm; int /*<<< orphan*/  hidden_state; int /*<<< orphan*/  id_to_local_id; } ;
typedef  TYPE_1__ data ;
struct TYPE_6__ {int /*<<< orphan*/  free_dyn; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  free_restore_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (data *d) {
  FUNC2 (&d->id_to_local_id);
  FUNC2 (&d->hidden_state);

  FUNC1 (free, &d->prm);
  FUNC3 (&d->dyn_snapshots, FUNC0(d)->free_dyn);
  FUNC4 (&d->dyn_snapshots);


  FUNC3 (&d->restore_info, free_restore_list);
  FUNC4 (&d->restore_info);
}