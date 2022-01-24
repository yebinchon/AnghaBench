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
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int PMSU_CONTROL_AND_CONFIG_L2_PWDDN ; 
 int PMSU_CONTROL_AND_CONFIG_PWDDN_REQ ; 
 int FUNC1 (unsigned int) ; 
 int PMSU_CPU_POWER_DOWN_DIS_SNP_Q_SKIP ; 
 unsigned long PMSU_PREPARE_DEEP_IDLE ; 
 unsigned long PMSU_PREPARE_SNOOP_DISABLE ; 
 int FUNC2 (unsigned int) ; 
 int PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT ; 
 int PMSU_STATUS_AND_MASK_FIQ_MASK ; 
 int PMSU_STATUS_AND_MASK_FIQ_WAKEUP ; 
 int PMSU_STATUS_AND_MASK_IRQ_MASK ; 
 int PMSU_STATUS_AND_MASK_IRQ_WAKEUP ; 
 int PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pmsu_mp_base ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(unsigned long flags)
{
	unsigned int hw_cpu = FUNC3(FUNC5());
	u32 reg;

	if (pmsu_mp_base == NULL)
		return -EINVAL;

	/*
	 * Adjust the PMSU configuration to wait for WFI signal, enable
	 * IRQ and FIQ as wakeup events, set wait for snoop queue empty
	 * indication and mask IRQ and FIQ from CPU
	 */
	reg = FUNC4(pmsu_mp_base + FUNC2(hw_cpu));
	reg |= PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT    |
	       PMSU_STATUS_AND_MASK_IRQ_WAKEUP       |
	       PMSU_STATUS_AND_MASK_FIQ_WAKEUP       |
	       PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT |
	       PMSU_STATUS_AND_MASK_IRQ_MASK         |
	       PMSU_STATUS_AND_MASK_FIQ_MASK;
	FUNC6(reg, pmsu_mp_base + FUNC2(hw_cpu));

	reg = FUNC4(pmsu_mp_base + FUNC0(hw_cpu));
	/* ask HW to power down the L2 Cache if needed */
	if (flags & PMSU_PREPARE_DEEP_IDLE)
		reg |= PMSU_CONTROL_AND_CONFIG_L2_PWDDN;

	/* request power down */
	reg |= PMSU_CONTROL_AND_CONFIG_PWDDN_REQ;
	FUNC6(reg, pmsu_mp_base + FUNC0(hw_cpu));

	if (flags & PMSU_PREPARE_SNOOP_DISABLE) {
		/* Disable snoop disable by HW - SW is taking care of it */
		reg = FUNC4(pmsu_mp_base + FUNC1(hw_cpu));
		reg |= PMSU_CPU_POWER_DOWN_DIS_SNP_Q_SKIP;
		FUNC6(reg, pmsu_mp_base + FUNC1(hw_cpu));
	}

	return 0;
}