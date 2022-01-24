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
 scalar_t__ SDRAM_CONFIG_OFFS ; 
 int SDRAM_CONFIG_SR_MODE_BIT ; 
 scalar_t__ SDRAM_DLB_EVICTION_OFFS ; 
 int SDRAM_DLB_EVICTION_THRESHOLD_MASK ; 
 scalar_t__ SDRAM_OPERATION_OFFS ; 
 int SDRAM_OPERATION_SELF_REFRESH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ sdram_ctrl ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(unsigned long data)
{
	u32 reg, srcmd;

	FUNC1();
	FUNC3();

	/*
	 * Issue a Data Synchronization Barrier instruction to ensure
	 * that all state saving has been completed.
	 */
	FUNC0();

	/* Flush the DLB and wait ~7 usec */
	reg = FUNC4(sdram_ctrl + SDRAM_DLB_EVICTION_OFFS);
	reg &= ~SDRAM_DLB_EVICTION_THRESHOLD_MASK;
	FUNC6(reg, sdram_ctrl + SDRAM_DLB_EVICTION_OFFS);

	FUNC5(7);

	/* Set DRAM in battery backup mode */
	reg = FUNC4(sdram_ctrl + SDRAM_CONFIG_OFFS);
	reg &= ~SDRAM_CONFIG_SR_MODE_BIT;
	FUNC6(reg, sdram_ctrl + SDRAM_CONFIG_OFFS);

	/* Prepare to go to self-refresh */

	srcmd = FUNC4(sdram_ctrl + SDRAM_OPERATION_OFFS);
	srcmd &= ~0x1F;
	srcmd |= SDRAM_OPERATION_SELF_REFRESH;

	FUNC2(sdram_ctrl + SDRAM_OPERATION_OFFS, srcmd);

	return 0;
}