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
typedef  int /*<<< orphan*/  task_finished_fn ;
typedef  int /*<<< orphan*/  start_failure_fn ;
typedef  int /*<<< orphan*/  get_next_task_fn ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 

int FUNC4(int n, get_next_task_fn get_next_task,
			       start_failure_fn start_failure,
			       task_finished_fn task_finished, void *pp_cb,
			       const char *tr2_category, const char *tr2_label)
{
	int result;

	FUNC2(tr2_category, tr2_label, NULL, "max:%d",
				   ((n < 1) ? FUNC0() : n));

	result = FUNC1(n, get_next_task, start_failure,
					task_finished, pp_cb);

	FUNC3(tr2_category, tr2_label, NULL);

	return result;
}