#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  task_id_to_delete_time ; 

int FUNC2 (long long task_id, int time_received) {
  FUNC1();

  if (task_id != 0) {
    int *y = FUNC0 (&task_id_to_delete_time, task_id);
    if (y != NULL && *y >= time_received) {
      return 1;
    }
  }
  return 0;
}