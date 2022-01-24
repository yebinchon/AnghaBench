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
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  tegra_cpu_init_mask ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(unsigned int cpu, struct task_struct *idle)
{
	int ret;
	unsigned long timeout;

	cpu = FUNC0(cpu);
	FUNC10(cpu);
	FUNC3(cpu, 0);

	/*
	 * The power up sequence of cold boot CPU and warm boot CPU
	 * was different.
	 *
	 * For warm boot CPU that was resumed from CPU hotplug, the
	 * power will be resumed automatically after un-halting the
	 * flow controller of the warm boot CPU. We need to wait for
	 * the confirmaiton that the CPU is powered then removing
	 * the IO clamps.
	 * For cold boot CPU, do not wait. After the cold boot CPU be
	 * booted, it will run to tegra_secondary_init() and set
	 * tegra_cpu_init_mask which influences what tegra30_boot_secondary()
	 * next time around.
	 */
	if (FUNC1(cpu, &tegra_cpu_init_mask)) {
		timeout = jiffies + FUNC4(50);
		do {
			if (FUNC7(cpu))
				goto remove_clamps;
			FUNC12(10);
		} while (FUNC11(jiffies, timeout));
	}

	/*
	 * The power status of the cold boot CPU is power gated as
	 * default. To power up the cold boot CPU, the power should
	 * be un-gated by un-toggling the power gate register
	 * manually.
	 */
	ret = FUNC8(cpu);
	if (ret)
		return ret;

remove_clamps:
	/* CPU partition is powered. Enable the CPU clock. */
	FUNC6(cpu);
	FUNC12(10);

	/* Remove I/O clamps. */
	ret = FUNC9(cpu);
	if (ret)
		return ret;

	FUNC12(10);

	FUNC2(cpu, 0); /* Clear flow controller CSR. */
	FUNC5(cpu);
	return 0;
}