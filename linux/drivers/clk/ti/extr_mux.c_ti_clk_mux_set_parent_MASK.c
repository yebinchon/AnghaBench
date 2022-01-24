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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct clk_omap_mux {size_t* table; int flags; int mask; int shift; int /*<<< orphan*/  latch; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {size_t (* clk_readl ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clk_writel ) (size_t,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int CLK_MUX_HIWORD_MASK ; 
 int CLK_MUX_INDEX_BIT ; 
 int CLK_MUX_INDEX_ONE ; 
 int FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_omap_mux* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, u8 index)
{
	struct clk_omap_mux *mux = FUNC4(hw);
	u32 val;

	if (mux->table) {
		index = mux->table[index];
	} else {
		if (mux->flags & CLK_MUX_INDEX_BIT)
			index = (1 << FUNC0(index));

		if (mux->flags & CLK_MUX_INDEX_ONE)
			index++;
	}

	if (mux->flags & CLK_MUX_HIWORD_MASK) {
		val = mux->mask << (mux->shift + 16);
	} else {
		val = ti_clk_ll_ops->clk_readl(&mux->reg);
		val &= ~(mux->mask << mux->shift);
	}
	val |= index << mux->shift;
	ti_clk_ll_ops->clk_writel(val, &mux->reg);
	FUNC3(&mux->reg, mux->latch);

	return 0;
}