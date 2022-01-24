#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parallel_processes {int max_processes; scalar_t__ nr_processes; int (* task_finished ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int output_owner; TYPE_2__* children; int /*<<< orphan*/  buffered_output; TYPE_1__* pfd; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  err; int /*<<< orphan*/  process; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int fd; } ;

/* Variables and functions */
 scalar_t__ GIT_CP_FREE ; 
 scalar_t__ GIT_CP_WAIT_CLEANUP ; 
 scalar_t__ GIT_CP_WORKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct parallel_processes *pp)
{
	int i, code;
	int n = pp->max_processes;
	int result = 0;

	while (pp->nr_processes > 0) {
		for (i = 0; i < pp->max_processes; i++)
			if (pp->children[i].state == GIT_CP_WAIT_CLEANUP)
				break;
		if (i == pp->max_processes)
			break;

		code = FUNC1(&pp->children[i].process);

		code = pp->task_finished(code,
					 &pp->children[i].err, pp->data,
					 pp->children[i].data);

		if (code)
			result = code;
		if (code < 0)
			break;

		pp->nr_processes--;
		pp->children[i].state = GIT_CP_FREE;
		pp->pfd[i].fd = -1;
		FUNC0(&pp->children[i].process);

		if (i != pp->output_owner) {
			FUNC2(&pp->buffered_output, &pp->children[i].err);
			FUNC3(&pp->children[i].err);
		} else {
			FUNC4(&pp->children[i].err, stderr);
			FUNC3(&pp->children[i].err);

			/* Output all other finished child processes */
			FUNC4(&pp->buffered_output, stderr);
			FUNC3(&pp->buffered_output);

			/*
			 * Pick next process to output live.
			 * NEEDSWORK:
			 * For now we pick it randomly by doing a round
			 * robin. Later we may want to pick the one with
			 * the most output or the longest or shortest
			 * running process time.
			 */
			for (i = 0; i < n; i++)
				if (pp->children[(pp->output_owner + i) % n].state == GIT_CP_WORKING)
					break;
			pp->output_owner = (pp->output_owner + i) % n;
		}
	}
	return result;
}