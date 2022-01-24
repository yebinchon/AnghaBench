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
struct child_process {int git_cmd; char const** argv; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

int FUNC5(int argc, const char **argv)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	int nogit = 0;

	FUNC2(&nogit);
	if (nogit)
		FUNC0("No git repo found");
	if (argc > 1 && !FUNC4(argv[1], "--setup-work-tree")) {
		FUNC3();
		argv++;
	}
	cp.git_cmd = 1;
	cp.argv = (const char **)argv + 1;
	return FUNC1(&cp);
}