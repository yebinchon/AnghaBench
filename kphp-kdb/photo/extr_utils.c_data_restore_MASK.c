#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  hidden_state; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC8 (data *d, int id) {
  if (FUNC1 (d, id) == 0) {
    return -1;
  }

  int local_id = FUNC2 (d,  id);
  if (local_id < 0) {
    return -1;
  }

  int prev_local_id;
//  dbg ("data_restore (local_id = %d)\n", local_id);
  if (FUNC5 (d, local_id, &prev_local_id) <= 0) {
    FUNC6 ("data_restore_del failed\n");
    return -1;
  }

  int i = local_id,
      j;
  FUNC0 (FUNC3 (d, i) == -1);
  if (prev_local_id == -1) {
    j = 0;
  } else {
    j = FUNC3 (d, prev_local_id) + 1;
//    dbg ("(prev_local_id = %d) (pos = %d)\n", prev_local_id, j - 1);
    FUNC0 (j != 0);
  }

  FUNC0 (FUNC4 (d, i, j) > -1);

  FUNC7 (&d->hidden_state, id, 0);
  return 0;
}