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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int events_check_enabled ; 
 int /*<<< orphan*/  events_lock ; 
 int /*<<< orphan*/  pm_abort_suspend ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int saved_count ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,unsigned int*) ; 

bool FUNC6(void)
{
	unsigned long flags;
	bool ret = false;

	FUNC3(&events_lock, flags);
	if (events_check_enabled) {
		unsigned int cnt, inpr;

		FUNC5(&cnt, &inpr);
		ret = (cnt != saved_count || inpr > 0);
		events_check_enabled = !ret;
	}
	FUNC4(&events_lock, flags);

	if (ret) {
		FUNC1("Wakeup pending, aborting suspend\n");
		FUNC2();
	}

	return ret || FUNC0(&pm_abort_suspend) > 0;
}