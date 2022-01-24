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
struct TYPE_2__ {int reg_divider_shift; int reg_divider_width; scalar_t__ reg_divider_offset; scalar_t__ divider_reg; } ;
struct xgene_clk {TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 struct xgene_clk* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
				unsigned long parent_rate)
{
	struct xgene_clk *pclk = FUNC2(hw);
	u32 data;

	if (pclk->param.divider_reg) {
		data = FUNC3(pclk->param.divider_reg +
					pclk->param.reg_divider_offset);
		data >>= pclk->param.reg_divider_shift;
		data &= (1 << pclk->param.reg_divider_width) - 1;

		FUNC1("%s clock recalc rate %ld parent %ld\n",
			FUNC0(hw),
			parent_rate / data, parent_rate);

		return parent_rate / data;
	} else {
		FUNC1("%s clock recalc rate %ld parent %ld\n",
			FUNC0(hw), parent_rate, parent_rate);
		return parent_rate;
	}
}