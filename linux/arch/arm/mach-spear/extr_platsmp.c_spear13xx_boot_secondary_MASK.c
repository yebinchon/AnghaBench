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
 int /*<<< orphan*/  boot_lock ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int spear_pen_release ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu, struct task_struct *idle)
{
	unsigned long timeout;

	/*
	 * set synchronisation state between this boot processor
	 * and the secondary one
	 */
	FUNC2(&boot_lock);

	/*
	 * The secondary processor is waiting to be released from
	 * the holding pen - release it, then wait for it to flag
	 * that it has been released by resetting spear_pen_release.
	 *
	 * Note that "spear_pen_release" is the hardware CPU ID, whereas
	 * "cpu" is Linux's internal ID.
	 */
	FUNC1(cpu);

	timeout = jiffies + (1 * HZ);
	while (FUNC4(jiffies, timeout)) {
		FUNC0();
		if (spear_pen_release == -1)
			break;

		FUNC5(10);
	}

	/*
	 * now the secondary core is starting up let it run its
	 * calibrations, then wait for it to finish
	 */
	FUNC3(&boot_lock);

	return spear_pen_release != -1 ? -ENOSYS : 0;
}