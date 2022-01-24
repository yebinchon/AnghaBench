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
 int ENOMEM ; 
 int /*<<< orphan*/  itmt_root_table ; 
 int /*<<< orphan*/  itmt_sysctl_header ; 
 int /*<<< orphan*/  itmt_update_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int sched_itmt_capable ; 
 int sysctl_sched_itmt_enabled ; 
 int x86_topology_update ; 

int FUNC4(void)
{
	FUNC0(&itmt_update_mutex);

	if (sched_itmt_capable) {
		FUNC1(&itmt_update_mutex);
		return 0;
	}

	itmt_sysctl_header = FUNC3(itmt_root_table);
	if (!itmt_sysctl_header) {
		FUNC1(&itmt_update_mutex);
		return -ENOMEM;
	}

	sched_itmt_capable = true;

	sysctl_sched_itmt_enabled = 1;

	x86_topology_update = true;
	FUNC2();

	FUNC1(&itmt_update_mutex);

	return 0;
}