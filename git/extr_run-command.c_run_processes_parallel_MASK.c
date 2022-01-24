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
struct parallel_processes {int shutdown; scalar_t__ nr_processes; scalar_t__ max_processes; } ;
typedef  int /*<<< orphan*/  start_failure_fn ;
typedef  int /*<<< orphan*/  get_next_task_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parallel_processes*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct parallel_processes*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct parallel_processes*) ; 
 int FUNC3 (struct parallel_processes*) ; 
 int /*<<< orphan*/  FUNC4 (struct parallel_processes*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct parallel_processes*) ; 
 int FUNC6 (struct parallel_processes*) ; 

int FUNC7(int n,
			   get_next_task_fn get_next_task,
			   start_failure_fn start_failure,
			   task_finished_fn task_finished,
			   void *pp_cb)
{
	int i, code;
	int output_timeout = 100;
	int spawn_cap = 4;
	struct parallel_processes pp;

	FUNC4(&pp, n, get_next_task, start_failure, task_finished, pp_cb);
	while (1) {
		for (i = 0;
		    i < spawn_cap && !pp.shutdown &&
		    pp.nr_processes < pp.max_processes;
		    i++) {
			code = FUNC6(&pp);
			if (!code)
				continue;
			if (code < 0) {
				pp.shutdown = 1;
				FUNC0(&pp, -code);
			}
			break;
		}
		if (!pp.nr_processes)
			break;
		FUNC1(&pp, output_timeout);
		FUNC5(&pp);
		code = FUNC3(&pp);
		if (code) {
			pp.shutdown = 1;
			if (code < 0)
				FUNC0(&pp, -code);
		}
	}

	FUNC2(&pp);
	return 0;
}