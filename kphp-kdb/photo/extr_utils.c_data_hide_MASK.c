#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  prm; int /*<<< orphan*/  hidden_state; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  del ; 
 int /*<<< orphan*/  get_i ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

int FUNC6 (data *d, int id, int tm) {
  int local_id = FUNC2 (d, id);
  if (local_id < 0) {
    return -1;
  }

  int pos = FUNC3 (d, local_id);
  FUNC1 (pos >= 0);

  int prev_local_id = pos == 0 ? -1 : FUNC0 (get_i, &d->prm, pos - 1);
  FUNC4 (d, local_id, prev_local_id);

  FUNC5 (&d->hidden_state, id, tm);

  return FUNC0 (del, &d->prm, pos);
}