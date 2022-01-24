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
 scalar_t__ FUNC0 (int) ; 
 int PMSU_CONTROL_AND_CONFIG_DFS_REQ ; 
 scalar_t__ FUNC1 (int) ; 
 int PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT ; 
 int PMSU_STATUS_AND_MASK_FIQ_MASK ; 
 int PMSU_STATUS_AND_MASK_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ pmsu_mp_base ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void *data)
{
	u32 reg;
	u32 cpu = FUNC5();
	unsigned long flags;

	FUNC3(flags);

	/* Prepare to enter idle */
	reg = FUNC4(pmsu_mp_base + FUNC1(cpu));
	reg |= PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT |
	       PMSU_STATUS_AND_MASK_IRQ_MASK     |
	       PMSU_STATUS_AND_MASK_FIQ_MASK;
	FUNC7(reg, pmsu_mp_base + FUNC1(cpu));

	/* Request the DFS transition */
	reg = FUNC4(pmsu_mp_base + FUNC0(cpu));
	reg |= PMSU_CONTROL_AND_CONFIG_DFS_REQ;
	FUNC7(reg, pmsu_mp_base + FUNC0(cpu));

	/* The fact of entering idle will trigger the DFS transition */
	FUNC6();

	/*
	 * We're back from idle, the DFS transition has completed,
	 * clear the idle wait indication.
	 */
	reg = FUNC4(pmsu_mp_base + FUNC1(cpu));
	reg &= ~PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT;
	FUNC7(reg, pmsu_mp_base + FUNC1(cpu));

	FUNC2(flags);
}