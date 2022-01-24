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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int S5P_CFG_WFI_CLEAN ; 
 unsigned int S5P_CFG_WFI_SLEEP ; 
 int /*<<< orphan*/  S5P_INFORM0 ; 
 int /*<<< orphan*/  S5P_OTHERS ; 
 unsigned int S5P_OTHER_SYSC_INTOFF ; 
 int /*<<< orphan*/  S5P_PWR_CFG ; 
 int /*<<< orphan*/  S5P_SLEEP_CFG ; 
 unsigned int S5P_SLEEP_CFG_OSC_EN ; 
 unsigned int S5P_SLEEP_CFG_USBOSC_EN ; 
 int /*<<< orphan*/  S5P_WAKEUP_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s5pv210_core_save ; 
 int /*<<< orphan*/  s5pv210_cpu_resume ; 
 unsigned int s5pv210_irqwake_intmask ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int tmp;

	/*
	 * Set wake-up mask registers
	 * S5P_EINT_WAKEUP_MASK is set by pinctrl driver in late suspend.
	 */
	FUNC3(s5pv210_irqwake_intmask, S5P_WAKEUP_MASK);

	/* ensure at least INFORM0 has the resume address */
	FUNC3(FUNC1(s5pv210_cpu_resume), S5P_INFORM0);

	tmp = FUNC2(S5P_SLEEP_CFG);
	tmp &= ~(S5P_SLEEP_CFG_OSC_EN | S5P_SLEEP_CFG_USBOSC_EN);
	FUNC3(tmp, S5P_SLEEP_CFG);

	/* WFI for SLEEP mode configuration by SYSCON */
	tmp = FUNC2(S5P_PWR_CFG);
	tmp &= S5P_CFG_WFI_CLEAN;
	tmp |= S5P_CFG_WFI_SLEEP;
	FUNC3(tmp, S5P_PWR_CFG);

	/* SYSCON interrupt handling disable */
	tmp = FUNC2(S5P_OTHERS);
	tmp |= S5P_OTHER_SYSC_INTOFF;
	FUNC3(tmp, S5P_OTHERS);

	FUNC4(s5pv210_core_save, FUNC0(s5pv210_core_save));
}