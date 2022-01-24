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
struct TYPE_3__ {long long x; int y; } ;
typedef  TYPE_1__ pair_ll_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ *,long long) ; 
 int now ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  task_deletes ; 
 int /*<<< orphan*/  task_id_to_delete_time ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__) ; 

int FUNC4 (long long task_id) {
  FUNC2();

  if (task_id != 0) {
    int *y = FUNC1 (&task_id_to_delete_time, task_id);
    FUNC0 (y);
    if (*y != now) {
      *y = now;
      pair_ll_int task_delete = {
        .x = task_id,
        .y = now
      };

      FUNC3 (task_deletes, task_delete);
    }
    return 1;
  }
  return 0;
}