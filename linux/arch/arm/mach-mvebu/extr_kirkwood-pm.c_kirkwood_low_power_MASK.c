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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ddr_operation_base ; 
 int /*<<< orphan*/  memory_pm_ctrl ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 mem_pm_ctrl;

	mem_pm_ctrl = FUNC1(memory_pm_ctrl);

	/* Set peripherals to low-power mode */
	FUNC2(~0, memory_pm_ctrl);

	/* Set DDR in self-refresh */
	FUNC2(0x7, ddr_operation_base);

	/*
	 * Set CPU in wait-for-interrupt state.
	 * This disables the CPU core clocks,
	 * the array clocks, and also the L2 controller.
	 */
	FUNC0();

	FUNC2(mem_pm_ctrl, memory_pm_ctrl);
}