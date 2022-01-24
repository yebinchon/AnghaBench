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
 int /*<<< orphan*/  RAC_ENABLED ; 
 int /*<<< orphan*/  RAC_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  b15_rac_flags ; 
 int /*<<< orphan*/  rac_config0_reg ; 
 int /*<<< orphan*/  rac_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	/* During kexec/reboot, the RAC is disabled via the reboot notifier
	 * return early here.
	 */
	if (FUNC4(RAC_SUSPENDED, &b15_rac_flags))
		return 0;

	FUNC2(&rac_lock);

	/* Indicate that we are starting a hotplug procedure */
	FUNC0(RAC_ENABLED, &b15_rac_flags);

	/* Disable the readahead cache and save its value to a global */
	rac_config0_reg = FUNC1();

	FUNC3(&rac_lock);

	return 0;
}