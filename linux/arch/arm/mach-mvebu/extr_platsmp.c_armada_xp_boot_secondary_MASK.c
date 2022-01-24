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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  armada_xp_secondary_startup ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(unsigned int cpu, struct task_struct *idle)
{
	int ret, hw_cpu;

	FUNC5("Booting CPU %d\n", cpu);

	hw_cpu = FUNC1(cpu);
	FUNC4(hw_cpu, armada_xp_secondary_startup);

	/*
	 * This is needed to wake up CPUs in the offline state after
	 * using CPU hotplug.
	 */
	FUNC0(FUNC2(cpu));

	/*
	 * This is needed to take secondary CPUs out of reset on the
	 * initial boot.
	 */
	ret = FUNC3(hw_cpu);
	if (ret) {
		FUNC6("unable to boot CPU: %d\n", ret);
		return ret;
	}

	return 0;
}