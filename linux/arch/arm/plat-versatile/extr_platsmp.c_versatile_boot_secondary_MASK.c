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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int versatile_cpu_release ; 
 int /*<<< orphan*/  versatile_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(unsigned int cpu, struct task_struct *idle)
{
	unsigned long timeout;

	/*
	 * Set synchronisation state between this boot processor
	 * and the secondary one
	 */
	FUNC3(&versatile_lock);

	/*
	 * This is really belt and braces; we hold unintended secondary
	 * CPUs in the holding pen until we're ready for them.  However,
	 * since we haven't sent them a soft interrupt, they shouldn't
	 * be there.
	 */
	FUNC8(FUNC1(cpu));

	/*
	 * Send the secondary CPU a soft interrupt, thereby causing
	 * the boot monitor to read the system wide flags register,
	 * and branch to the address found there.
	 */
	FUNC0(FUNC2(cpu));

	timeout = jiffies + (1 * HZ);
	while (FUNC6(jiffies, timeout)) {
		FUNC5();
		if (versatile_cpu_release == -1)
			break;

		FUNC7(10);
	}

	/*
	 * now the secondary core is starting up let it run its
	 * calibrations, then wait for it to finish
	 */
	FUNC4(&versatile_lock);

	return versatile_cpu_release != -1 ? -ENOSYS : 0;
}