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
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ; 
 scalar_t__ EXYNOS_BOOT_ADDR ; 
 scalar_t__ EXYNOS_BOOT_FLAG ; 
 int /*<<< orphan*/  EXYNOS_SLEEP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_cpu_resume_ns ; 
 int /*<<< orphan*/  exynos_cpu_suspend ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ sysram_ns_base_addr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(void)
{
	if (FUNC3() == ARM_CPU_PART_CORTEX_A9)
		FUNC2();

	FUNC4(EXYNOS_SLEEP_MAGIC, sysram_ns_base_addr + EXYNOS_BOOT_FLAG);
	FUNC4(FUNC0(exynos_cpu_resume_ns),
		sysram_ns_base_addr + EXYNOS_BOOT_ADDR);

	return FUNC1(0, exynos_cpu_suspend);
}