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
struct TYPE_6__ {int n; } ;
struct TYPE_5__ {int objects_n; TYPE_2__ hidden_state; TYPE_2__ id_to_local_id; int /*<<< orphan*/ * objects_offset; int /*<<< orphan*/ * objects; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2 (data *d) {
  d->objects_n = -1;
  d->objects = NULL;
  d->objects_offset = NULL;
  FUNC1 (&d->id_to_local_id);
  int pass_n = d->hidden_state.n;
  FUNC1 (&d->hidden_state);
//  dbg ("DATA_UNLOAD %d\n", data_is_empty (d, pass_n));
  return FUNC0 (d, pass_n);
}