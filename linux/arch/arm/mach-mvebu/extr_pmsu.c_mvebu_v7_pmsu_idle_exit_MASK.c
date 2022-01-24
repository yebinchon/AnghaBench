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
 int FUNC0 (unsigned int) ; 
 int PMSU_CONTROL_AND_CONFIG_L2_PWDDN ; 
 int FUNC1 (unsigned int) ; 
 int PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT ; 
 int PMSU_STATUS_AND_MASK_FIQ_MASK ; 
 int PMSU_STATUS_AND_MASK_FIQ_WAKEUP ; 
 int PMSU_STATUS_AND_MASK_IRQ_MASK ; 
 int PMSU_STATUS_AND_MASK_IRQ_WAKEUP ; 
 int PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pmsu_mp_base ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	unsigned int hw_cpu = FUNC2(FUNC4());
	u32 reg;

	if (pmsu_mp_base == NULL)
		return;
	/* cancel ask HW to power down the L2 Cache if possible */
	reg = FUNC3(pmsu_mp_base + FUNC0(hw_cpu));
	reg &= ~PMSU_CONTROL_AND_CONFIG_L2_PWDDN;
	FUNC5(reg, pmsu_mp_base + FUNC0(hw_cpu));

	/* cancel Enable wakeup events and mask interrupts */
	reg = FUNC3(pmsu_mp_base + FUNC1(hw_cpu));
	reg &= ~(PMSU_STATUS_AND_MASK_IRQ_WAKEUP | PMSU_STATUS_AND_MASK_FIQ_WAKEUP);
	reg &= ~PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT;
	reg &= ~PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT;
	reg &= ~(PMSU_STATUS_AND_MASK_IRQ_MASK | PMSU_STATUS_AND_MASK_FIQ_MASK);
	FUNC5(reg, pmsu_mp_base + FUNC1(hw_cpu));
}