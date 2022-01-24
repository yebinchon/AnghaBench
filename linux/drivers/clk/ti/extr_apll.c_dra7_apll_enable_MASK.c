#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct dpll_data {int idlest_mask; int enable_mask; int /*<<< orphan*/  idlest_reg; int /*<<< orphan*/  control_reg; } ;
struct clk_hw_omap {int /*<<< orphan*/  hw; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clk_writel ) (int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int APLL_FORCE_LOCK ; 
 int EBUSY ; 
 int EINVAL ; 
 int MAX_APLL_WAIT_TRIES ; 
 int FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_hw_omap* FUNC8 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw)
{
	struct clk_hw_omap *clk = FUNC8(hw);
	int r = 0, i = 0;
	struct dpll_data *ad;
	const char *clk_name;
	u8 state = 1;
	u32 v;

	ad = clk->dpll_data;
	if (!ad)
		return -EINVAL;

	clk_name = FUNC1(&clk->hw);

	state <<= FUNC0(ad->idlest_mask);

	/* Check is already locked */
	v = ti_clk_ll_ops->clk_readl(&ad->idlest_reg);

	if ((v & ad->idlest_mask) == state)
		return r;

	v = ti_clk_ll_ops->clk_readl(&ad->control_reg);
	v &= ~ad->enable_mask;
	v |= APLL_FORCE_LOCK << FUNC0(ad->enable_mask);
	ti_clk_ll_ops->clk_writel(v, &ad->control_reg);

	state <<= FUNC0(ad->idlest_mask);

	while (1) {
		v = ti_clk_ll_ops->clk_readl(&ad->idlest_reg);
		if ((v & ad->idlest_mask) == state)
			break;
		if (i > MAX_APLL_WAIT_TRIES)
			break;
		i++;
		FUNC9(1);
	}

	if (i == MAX_APLL_WAIT_TRIES) {
		FUNC3("clock: %s failed transition to '%s'\n",
			clk_name, (state) ? "locked" : "bypassed");
		r = -EBUSY;
	} else
		FUNC2("clock: %s transition to '%s' in %d loops\n",
			 clk_name, (state) ? "locked" : "bypassed", i);

	return r;
}