#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cpupll_reg_base; scalar_t__ ddrpll_reg_base; scalar_t__ deepsleep_reg; unsigned int sleepcount; } ;

/* Variables and functions */
 unsigned int DEEPSLEEP_SLEEPCOUNT_MASK ; 
 scalar_t__ PLLCTL ; 
 unsigned int PLLCTL_PLLEN ; 
 unsigned int PLLCTL_PLLENSRC ; 
 unsigned int PLLCTL_PLLPWRDN ; 
 unsigned int PLLCTL_PLLRST ; 
 int /*<<< orphan*/  PLL_BYPASS_TIME ; 
 int /*<<< orphan*/  PLL_LOCK_TIME ; 
 int /*<<< orphan*/  PLL_RESET_TIME ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ pm_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned val;

	if (pm_config.cpupll_reg_base != pm_config.ddrpll_reg_base) {

		/* Switch CPU PLL to bypass mode */
		val = FUNC0(pm_config.cpupll_reg_base + PLLCTL);
		val &= ~(PLLCTL_PLLENSRC | PLLCTL_PLLEN);
		FUNC1(val, pm_config.cpupll_reg_base + PLLCTL);

		FUNC3(PLL_BYPASS_TIME);

		/* Powerdown CPU PLL */
		val = FUNC0(pm_config.cpupll_reg_base + PLLCTL);
		val |= PLLCTL_PLLPWRDN;
		FUNC1(val, pm_config.cpupll_reg_base + PLLCTL);
	}

	/* Configure sleep count in deep sleep register */
	val = FUNC0(pm_config.deepsleep_reg);
	val &= ~DEEPSLEEP_SLEEPCOUNT_MASK,
	val |= pm_config.sleepcount;
	FUNC1(val, pm_config.deepsleep_reg);

	/* System goes to sleep in this call */
	FUNC2(&pm_config);

	if (pm_config.cpupll_reg_base != pm_config.ddrpll_reg_base) {

		/* put CPU PLL in reset */
		val = FUNC0(pm_config.cpupll_reg_base + PLLCTL);
		val &= ~PLLCTL_PLLRST;
		FUNC1(val, pm_config.cpupll_reg_base + PLLCTL);

		/* put CPU PLL in power down */
		val = FUNC0(pm_config.cpupll_reg_base + PLLCTL);
		val &= ~PLLCTL_PLLPWRDN;
		FUNC1(val, pm_config.cpupll_reg_base + PLLCTL);

		/* wait for CPU PLL reset */
		FUNC3(PLL_RESET_TIME);

		/* bring CPU PLL out of reset */
		val = FUNC0(pm_config.cpupll_reg_base + PLLCTL);
		val |= PLLCTL_PLLRST;
		FUNC1(val, pm_config.cpupll_reg_base + PLLCTL);

		/* Wait for CPU PLL to lock */
		FUNC3(PLL_LOCK_TIME);

		/* Remove CPU PLL from bypass mode */
		val = FUNC0(pm_config.cpupll_reg_base + PLLCTL);
		val &= ~PLLCTL_PLLENSRC;
		val |= PLLCTL_PLLEN;
		FUNC1(val, pm_config.cpupll_reg_base + PLLCTL);
	}
}