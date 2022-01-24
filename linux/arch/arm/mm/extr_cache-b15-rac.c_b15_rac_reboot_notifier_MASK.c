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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  RAC_ENABLED ; 
 int /*<<< orphan*/  RAC_SUSPENDED ; 
 unsigned long SYS_RESTART ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  b15_rac_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rac_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
				   unsigned long action,
				   void *data)
{
	/* During kexec, we are not yet migrated on the boot CPU, so we need to
	 * make sure we are SMP safe here. Once the RAC is disabled, flag it as
	 * suspended such that the hotplug notifier returns early.
	 */
	if (action == SYS_RESTART) {
		FUNC3(&rac_lock);
		FUNC0();
		FUNC1(RAC_ENABLED, &b15_rac_flags);
		FUNC2(RAC_SUSPENDED, &b15_rac_flags);
		FUNC4(&rac_lock);
	}

	return NOTIFY_DONE;
}