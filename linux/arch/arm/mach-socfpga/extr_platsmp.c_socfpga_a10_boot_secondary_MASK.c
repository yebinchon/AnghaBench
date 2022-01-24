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
 int /*<<< orphan*/  RSTMGR_MPUMODRST_CPU1 ; 
 scalar_t__ SOCFPGA_A10_RSTMGR_MODMPURST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ rst_manager_base_addr ; 
 int /*<<< orphan*/  secondary_startup ; 
 int /*<<< orphan*/  secondary_trampoline ; 
 int /*<<< orphan*/  secondary_trampoline_end ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int socfpga_cpu1start_addr ; 
 scalar_t__ sys_manager_base_addr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(unsigned int cpu, struct task_struct *idle)
{
	int trampoline_size = &secondary_trampoline_end - &secondary_trampoline;

	if (socfpga_cpu1start_addr) {
		FUNC6(RSTMGR_MPUMODRST_CPU1, rst_manager_base_addr +
		       SOCFPGA_A10_RSTMGR_MODMPURST);
		FUNC2(FUNC4(0), &secondary_trampoline, trampoline_size);

		FUNC6(FUNC0(secondary_startup),
		       sys_manager_base_addr + (socfpga_cpu1start_addr & 0x00000fff));

		FUNC1();
		FUNC5();
		FUNC3(0, trampoline_size);

		/* This will release CPU #1 out of reset. */
		FUNC6(0, rst_manager_base_addr + SOCFPGA_A10_RSTMGR_MODMPURST);
	}

	return 0;
}