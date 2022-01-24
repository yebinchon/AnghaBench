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
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  mvebu_cortex_a9_secondary_startup ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(unsigned int cpu,
						    struct task_struct *idle)
{
	int ret, hw_cpu;

	FUNC8("Booting CPU %d\n", cpu);

	/*
	 * Write the address of secondary startup into the system-wide
	 * flags register. The boot monitor waits until it receives a
	 * soft interrupt, and then the secondary CPU branches to this
	 * address.
	 */
	hw_cpu = FUNC1(cpu);
	if (FUNC6("marvell,armada375"))
		FUNC5(mvebu_cortex_a9_secondary_startup);
	else
		FUNC4(hw_cpu, mvebu_cortex_a9_secondary_startup);
	FUNC9();

	/*
	 * Doing this before deasserting the CPUs is needed to wake up CPUs
	 * in the offline state after using CPU hotplug.
	 */
	FUNC0(FUNC2(cpu));

	ret = FUNC3(hw_cpu);
	if (ret) {
		FUNC7("Could not start the secondary CPU: %d\n", ret);
		return ret;
	}

	return 0;
}