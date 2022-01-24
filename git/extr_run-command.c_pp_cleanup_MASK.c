#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parallel_processes {int max_processes; int /*<<< orphan*/  buffered_output; TYPE_1__* pfd; TYPE_1__* children; } ;
struct TYPE_2__ {int /*<<< orphan*/  process; int /*<<< orphan*/  err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct parallel_processes *pp)
{
	int i;

	FUNC5("run_processes_parallel: done");
	for (i = 0; i < pp->max_processes; i++) {
		FUNC3(&pp->children[i].err);
		FUNC0(&pp->children[i].process);
	}

	FUNC1(pp->children);
	FUNC1(pp->pfd);

	/*
	 * When get_next_task added messages to the buffer in its last
	 * iteration, the buffered output is non empty.
	 */
	FUNC4(&pp->buffered_output, stderr);
	FUNC3(&pp->buffered_output);

	FUNC2();
}