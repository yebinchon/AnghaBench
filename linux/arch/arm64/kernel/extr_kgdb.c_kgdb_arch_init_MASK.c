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
 int /*<<< orphan*/  kgdb_brkpt_hook ; 
 int /*<<< orphan*/  kgdb_compiled_brkpt_hook ; 
 int /*<<< orphan*/  kgdb_notifier ; 
 int /*<<< orphan*/  kgdb_step_hook ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int ret = FUNC0(&kgdb_notifier);

	if (ret != 0)
		return ret;

	FUNC1(&kgdb_brkpt_hook);
	FUNC1(&kgdb_compiled_brkpt_hook);
	FUNC2(&kgdb_step_hook);
	return 0;
}