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
typedef  int u32 ;
struct TYPE_2__ {int reg_divider_width; int reg_divider_shift; scalar_t__ reg_divider_offset; scalar_t__ divider_reg; } ;
struct xgene_clk {scalar_t__ lock; TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct xgene_clk* FUNC4 (struct clk_hw*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct xgene_clk *pclk = FUNC4(hw);
	unsigned long flags = 0;
	u32 data;
	u32 divider;
	u32 divider_save;

	if (pclk->lock)
		FUNC2(pclk->lock, flags);

	if (pclk->param.divider_reg) {
		/* Let's compute the divider */
		if (rate > parent_rate)
			rate = parent_rate;
		divider_save = divider = parent_rate / rate; /* Rounded down */
		divider &= (1 << pclk->param.reg_divider_width) - 1;
		divider <<= pclk->param.reg_divider_shift;

		/* Set new divider */
		data = FUNC5(pclk->param.divider_reg +
				pclk->param.reg_divider_offset);
		data &= ~(((1 << pclk->param.reg_divider_width) - 1)
				<< pclk->param.reg_divider_shift);
		data |= divider;
		FUNC6(data, pclk->param.divider_reg +
					pclk->param.reg_divider_offset);
		FUNC1("%s clock set rate %ld\n", FUNC0(hw),
			parent_rate / divider_save);
	} else {
		divider_save = 1;
	}

	if (pclk->lock)
		FUNC3(pclk->lock, flags);

	return parent_rate / divider_save;
}