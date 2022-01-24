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
typedef  int u64 ;
typedef  int u32 ;
struct ti_adpll_dco_data {int dummy; } ;
struct ti_adpll_data {scalar_t__ regs; TYPE_1__* c; int /*<<< orphan*/  lock; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_type_s; } ;

/* Variables and functions */
 scalar_t__ ADPLL_CLKCTRL_OFFSET ; 
 int /*<<< orphan*/  ADPLL_CLKCTRL_REGM4XEN_ADPLL_S ; 
 int ADPLL_FRACDIV_FRACTIONALM_MASK ; 
 scalar_t__ ADPLL_FRACDIV_OFFSET ; 
 scalar_t__ ADPLL_M2NDIV_OFFSET ; 
 scalar_t__ ADPLL_MN2DIV_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct ti_adpll_data*) ; 
 struct ti_adpll_data* FUNC7 (struct ti_adpll_dco_data*) ; 
 struct ti_adpll_dco_data* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC9(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	struct ti_adpll_dco_data *dco = FUNC8(hw);
	struct ti_adpll_data *d = FUNC7(dco);
	u32 frac_m, divider, v;
	u64 rate;
	unsigned long flags;

	if (FUNC6(d))
		return 0;

	FUNC4(&d->lock, flags);
	frac_m = FUNC2(d->regs + ADPLL_FRACDIV_OFFSET);
	frac_m &= ADPLL_FRACDIV_FRACTIONALM_MASK;
	rate = (u64)FUNC3(d->regs + ADPLL_MN2DIV_OFFSET) << 18;
	rate += frac_m;
	rate *= parent_rate;
	divider = (FUNC3(d->regs + ADPLL_M2NDIV_OFFSET) + 1) << 18;
	FUNC5(&d->lock, flags);

	FUNC1(rate, divider);

	if (d->c->is_type_s) {
		v = FUNC2(d->regs + ADPLL_CLKCTRL_OFFSET);
		if (v & FUNC0(ADPLL_CLKCTRL_REGM4XEN_ADPLL_S))
			rate *= 4;
		rate *= 2;
	}

	return rate;
}