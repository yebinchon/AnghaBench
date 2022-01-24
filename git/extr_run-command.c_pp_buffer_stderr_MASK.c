#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct parallel_processes {int max_processes; TYPE_2__* children; TYPE_3__* pfd; } ;
struct TYPE_6__ {int revents; } ;
struct TYPE_4__ {int /*<<< orphan*/  err; } ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__ process; int /*<<< orphan*/  err; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ GIT_CP_WAIT_CLEANUP ; 
 scalar_t__ GIT_CP_WORKING ; 
 int POLLHUP ; 
 int POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct parallel_processes*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct parallel_processes *pp, int output_timeout)
{
	int i;

	while ((i = FUNC2(pp->pfd, pp->max_processes, output_timeout)) < 0) {
		if (errno == EINTR)
			continue;
		FUNC3(pp);
		FUNC1("poll");
	}

	/* Buffer output from all pipes. */
	for (i = 0; i < pp->max_processes; i++) {
		if (pp->children[i].state == GIT_CP_WORKING &&
		    pp->pfd[i].revents & (POLLIN | POLLHUP)) {
			int n = FUNC4(&pp->children[i].err,
						 pp->children[i].process.err, 0);
			if (n == 0) {
				FUNC0(pp->children[i].process.err);
				pp->children[i].state = GIT_CP_WAIT_CLEANUP;
			} else if (n < 0)
				if (errno != EAGAIN)
					FUNC1("read");
		}
	}
}