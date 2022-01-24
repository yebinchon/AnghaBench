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
struct hsdk_pll_clk {int /*<<< orphan*/  spec_regs; } ;
struct hsdk_pll_cfg {int dummy; } ;

/* Variables and functions */
 unsigned long CORE_IF_CLK_THRESHOLD_HZ ; 
 int /*<<< orphan*/  CREG_CORE_IF_CLK_DIV_1 ; 
 int /*<<< orphan*/  CREG_CORE_IF_CLK_DIV_2 ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HSDK_PLL_MAX_LOCK_TIME ; 
 scalar_t__ FUNC0 (struct hsdk_pll_clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct hsdk_pll_clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsdk_pll_clk*,struct hsdk_pll_cfg const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hsdk_pll_clk *clk,
				     unsigned long rate,
				     const struct hsdk_pll_cfg *cfg)
{
	/*
	 * When core clock exceeds 500MHz, the divider for the interface
	 * clock must be programmed to div-by-2.
	 */
	if (rate > CORE_IF_CLK_THRESHOLD_HZ)
		FUNC3(CREG_CORE_IF_CLK_DIV_2, clk->spec_regs);

	FUNC2(clk, cfg);

	/*
	 * Wait until CGU relocks and check error status.
	 * If after timeout CGU is unlocked yet return error.
	 */
	FUNC4(HSDK_PLL_MAX_LOCK_TIME);
	if (!FUNC1(clk))
		return -ETIMEDOUT;

	if (FUNC0(clk))
		return -EINVAL;

	/*
	 * Program divider to div-by-1 if we succesfuly set core clock below
	 * 500MHz threshold.
	 */
	if (rate <= CORE_IF_CLK_THRESHOLD_HZ)
		FUNC3(CREG_CORE_IF_CLK_DIV_1, clk->spec_regs);

	return 0;
}