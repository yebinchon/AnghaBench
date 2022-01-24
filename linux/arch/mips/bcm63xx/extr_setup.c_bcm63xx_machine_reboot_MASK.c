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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
#define  BCM3368_CPU_ID 134 
#define  BCM6328_CPU_ID 133 
#define  BCM6338_CPU_ID 132 
#define  BCM6345_CPU_ID 131 
#define  BCM6348_CPU_ID 130 
#define  BCM6358_CPU_ID 129 
#define  BCM6362_CPU_ID 128 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  EXTIRQ_CFG_CLEAR_ALL ; 
 int /*<<< orphan*/  EXTIRQ_CFG_CLEAR_ALL_6348 ; 
 int /*<<< orphan*/  EXTIRQ_CFG_MASK_ALL ; 
 int /*<<< orphan*/  EXTIRQ_CFG_MASK_ALL_6348 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_3368 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_6328 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_6338 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_6345 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_6348 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_6358 ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG_6362 ; 
 int /*<<< orphan*/  PERF_SYS_PLL_CTL_REG ; 
 int /*<<< orphan*/  SYS_PLL_SOFT_RESET ; 
 int /*<<< orphan*/  WDT_SOFTRESET_REG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(void)
{
	u32 reg, perf_regs[2] = { 0, 0 };
	unsigned int i;

	/* mask and clear all external irq */
	switch (FUNC3()) {
	case BCM3368_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_3368;
		break;
	case BCM6328_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_6328;
		break;
	case BCM6338_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_6338;
		break;
	case BCM6345_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_6345;
		break;
	case BCM6348_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_6348;
		break;
	case BCM6358_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_6358;
		break;
	case BCM6362_CPU_ID:
		perf_regs[0] = PERF_EXTIRQ_CFG_REG_6362;
		break;
	}

	for (i = 0; i < 2; i++) {
		if (!perf_regs[i])
			break;

		reg = FUNC5(perf_regs[i]);
		if (FUNC1()) {
			reg &= ~EXTIRQ_CFG_MASK_ALL_6348;
			reg |= EXTIRQ_CFG_CLEAR_ALL_6348;
		} else {
			reg &= ~EXTIRQ_CFG_MASK_ALL;
			reg |= EXTIRQ_CFG_CLEAR_ALL;
		}
		FUNC6(reg, perf_regs[i]);
	}

	if (FUNC1() && (FUNC4() == 0xa1))
		FUNC2();

	FUNC8("triggering watchdog soft-reset...\n");
	if (FUNC0()) {
		FUNC7(1, WDT_SOFTRESET_REG);
	} else {
		reg = FUNC5(PERF_SYS_PLL_CTL_REG);
		reg |= SYS_PLL_SOFT_RESET;
		FUNC6(reg, PERF_SYS_PLL_CTL_REG);
	}
	while (1)
		;
}