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
 int /*<<< orphan*/  PM_SUSPEND_MEM ; 
 int /*<<< orphan*/  PM_SUSPEND_STANDBY ; 
 int /*<<< orphan*/  agent_wq ; 
 int /*<<< orphan*/  current ; 
 int pci_pm_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int wake_from_pci ; 

__attribute__((used)) static int FUNC4(void *data)
{
	while (1) {
		FUNC3(agent_wq, pci_pm_state >= 2);
		FUNC2();

		if (FUNC1(current) || pci_pm_state < 2)
			continue;

		/* With a preemptible kernel (or SMP), this could race with
		 * a userspace-driven suspend request.  It's probably best
		 * to avoid mixing the two with such a configuration (or
		 * else fix it by adding a mutex to state_store that we can
		 * synchronize with).
		 */

		wake_from_pci = 1;

		FUNC0(pci_pm_state == 3 ? PM_SUSPEND_MEM :
		                               PM_SUSPEND_STANDBY);

		wake_from_pci = 0;
	}

	return 0;
}