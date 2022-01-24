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
struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct TYPE_2__ {int bits; size_t shift; scalar_t__ reg; } ;
struct ingenic_cgu_clk_info {int type; int* parents; TYPE_1__ mux; } ;
struct ingenic_cgu {int /*<<< orphan*/  lock; scalar_t__ base; struct ingenic_cgu_clk_info* clock_info; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CGU_CLK_MUX ; 
 int EINVAL ; 
 size_t FUNC1 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ingenic_clk* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, u8 idx)
{
	struct ingenic_clk *ingenic_clk = FUNC5(hw);
	struct ingenic_cgu *cgu = ingenic_clk->cgu;
	const struct ingenic_cgu_clk_info *clk_info;
	unsigned long flags;
	u8 curr_idx, hw_idx, num_poss;
	u32 reg, mask;

	clk_info = &cgu->clock_info[ingenic_clk->idx];

	if (clk_info->type & CGU_CLK_MUX) {
		/*
		 * Convert the parent index to the hardware index by adding
		 * 1 for any -1 in the parents array preceding the given
		 * index. That is, we want the index of idx'th entry in
		 * clk_info->parents which does not equal -1.
		 */
		hw_idx = curr_idx = 0;
		num_poss = 1 << clk_info->mux.bits;
		for (; hw_idx < num_poss; hw_idx++) {
			if (clk_info->parents[hw_idx] == -1)
				continue;
			if (curr_idx == idx)
				break;
			curr_idx++;
		}

		/* idx should always be a valid parent */
		FUNC0(curr_idx != idx);

		mask = FUNC1(clk_info->mux.bits - 1, 0);
		mask <<= clk_info->mux.shift;

		FUNC3(&cgu->lock, flags);

		/* write the register */
		reg = FUNC2(cgu->base + clk_info->mux.reg);
		reg &= ~mask;
		reg |= hw_idx << clk_info->mux.shift;
		FUNC6(reg, cgu->base + clk_info->mux.reg);

		FUNC4(&cgu->lock, flags);
		return 0;
	}

	return idx ? -EINVAL : 0;
}