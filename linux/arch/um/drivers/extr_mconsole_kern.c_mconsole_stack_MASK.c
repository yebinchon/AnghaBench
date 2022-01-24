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
struct task_struct {int dummy; } ;
struct TYPE_2__ {char* data; } ;
struct mc_request {TYPE_1__ request; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  FUNC1 (struct mc_request*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/  stack_proc ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mc_request*,int /*<<< orphan*/ ,struct task_struct*) ; 

void FUNC6(struct mc_request *req)
{
	char *ptr = req->request.data;
	int pid_requested= -1;
	struct task_struct *to = NULL;

	/*
	 * Would be nice:
	 * 1) Send showregs output to mconsole.
	 * 2) Add a way to stack dump all pids.
	 */

	ptr += FUNC4("stack");
	ptr = FUNC2(ptr);

	/*
	 * Should really check for multiple pids or reject bad args here
	 */
	/* What do the arguments in mconsole_reply mean? */
	if (FUNC3(ptr, "%d", &pid_requested) == 0) {
		FUNC1(req, "Please specify a pid", 1, 0);
		return;
	}

	to = FUNC0(pid_requested, &init_pid_ns);
	if ((to == NULL) || (pid_requested == 0)) {
		FUNC1(req, "Couldn't find that pid", 1, 0);
		return;
	}
	FUNC5(req, stack_proc, to);
}