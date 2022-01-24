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
struct notifier_block {int dummy; } ;
struct davinci_pllen_clk {scalar_t__ base; } ;
struct clk_notifier_data {int /*<<< orphan*/  clk; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int NOTIFY_OK ; 
 scalar_t__ PLLCMD ; 
 int PLLCMD_GOSET ; 
 scalar_t__ PLLSTAT ; 
 int PLLSTAT_GOSTAT ; 
#define  POST_RATE_CHANGE 129 
#define  PRE_RATE_CHANGE 128 
 struct clk_hw* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 struct davinci_pllen_clk* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
					  unsigned long flags, void *data)
{
	struct clk_notifier_data *cnd = data;
	struct clk_hw *hw = FUNC0(FUNC1(cnd->clk));
	struct davinci_pllen_clk *pll = FUNC3(hw);
	u32 pllcmd, pllstat;

	switch (flags) {
	case POST_RATE_CHANGE:
		/* apply the changes */
		pllcmd = FUNC2(pll->base + PLLCMD);
		pllcmd |= PLLCMD_GOSET;
		FUNC4(pllcmd, pll->base + PLLCMD);
		/* fallthrough */
	case PRE_RATE_CHANGE:
		/* Wait until for outstanding changes to take effect */
		do {
			pllstat = FUNC2(pll->base + PLLSTAT);
		} while (pllstat & PLLSTAT_GOSTAT);
		break;
	}

	return NOTIFY_OK;
}