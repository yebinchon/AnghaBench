#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct parallel_processes {int max_processes; int (* get_next_task ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int (* start_failure ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int shutdown; TYPE_2__* children; TYPE_1__* pfd; int /*<<< orphan*/  nr_processes; int /*<<< orphan*/  buffered_output; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int err; int stdout_to_stderr; int no_stdin; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_3__ process; int /*<<< orphan*/  err; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ GIT_CP_FREE ; 
 scalar_t__ GIT_CP_WORKING ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct parallel_processes *pp)
{
	int i, code;

	for (i = 0; i < pp->max_processes; i++)
		if (pp->children[i].state == GIT_CP_FREE)
			break;
	if (i == pp->max_processes)
		FUNC0("bookkeeping is hard");

	code = pp->get_next_task(&pp->children[i].process,
				 &pp->children[i].err,
				 pp->data,
				 &pp->children[i].data);
	if (!code) {
		FUNC2(&pp->buffered_output, &pp->children[i].err);
		FUNC3(&pp->children[i].err);
		return 1;
	}
	pp->children[i].process.err = -1;
	pp->children[i].process.stdout_to_stderr = 1;
	pp->children[i].process.no_stdin = 1;

	if (FUNC1(&pp->children[i].process)) {
		code = pp->start_failure(&pp->children[i].err,
					 pp->data,
					 pp->children[i].data);
		FUNC2(&pp->buffered_output, &pp->children[i].err);
		FUNC3(&pp->children[i].err);
		if (code)
			pp->shutdown = 1;
		return code;
	}

	pp->nr_processes++;
	pp->children[i].state = GIT_CP_WORKING;
	pp->pfd[i].fd = pp->children[i].process.err;
	return 0;
}