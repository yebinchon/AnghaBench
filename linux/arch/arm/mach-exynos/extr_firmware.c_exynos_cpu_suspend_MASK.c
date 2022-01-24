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
 scalar_t__ EXYNOS_BOOT_FLAG ; 
 int /*<<< orphan*/  SMC_CMD_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ sysram_ns_base_addr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(unsigned long arg)
{
	FUNC1();
	FUNC2();

	FUNC0(SMC_CMD_SLEEP, 0, 0, 0);

	FUNC3("Failed to suspend the system\n");
	FUNC4(0, sysram_ns_base_addr + EXYNOS_BOOT_FLAG);
	return 1;
}