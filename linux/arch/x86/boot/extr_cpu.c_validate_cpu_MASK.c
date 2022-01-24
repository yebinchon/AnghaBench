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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void)
{
	u32 *err_flags;
	int cpu_level, req_level;

	FUNC0(&cpu_level, &req_level, &err_flags);

	if (cpu_level < req_level) {
		FUNC3("This kernel requires an %s CPU, ",
		       FUNC2(req_level));
		FUNC3("but only detected an %s CPU.\n",
		       FUNC2(cpu_level));
		return -1;
	}

	if (err_flags) {
		FUNC5("This kernel requires the following features "
		     "not present on the CPU:\n");
		FUNC6(err_flags);
		FUNC4('\n');
		return -1;
	} else if (FUNC1()) {
		return -1;
	} else {
		return 0;
	}
}