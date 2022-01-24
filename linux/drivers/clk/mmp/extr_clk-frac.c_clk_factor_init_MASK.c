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
struct mmp_clk_factor_masks {int num_shift; int num_mask; int den_shift; int den_mask; } ;
struct mmp_clk_factor {int ftbl_cnt; scalar_t__ lock; int /*<<< orphan*/  base; TYPE_1__* ftbl; struct mmp_clk_factor_masks* masks; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int den; int num; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct mmp_clk_factor* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct mmp_clk_factor *factor = FUNC3(hw);
	struct mmp_clk_factor_masks *masks = factor->masks;
	u32 val, num, den;
	int i;
	unsigned long flags = 0;

	if (factor->lock)
		FUNC1(factor->lock, flags);

	val = FUNC0(factor->base);

	/* calculate numerator */
	num = (val >> masks->num_shift) & masks->num_mask;

	/* calculate denominator */
	den = (val >> masks->den_shift) & masks->den_mask;

	for (i = 0; i < factor->ftbl_cnt; i++)
		if (den == factor->ftbl[i].den && num == factor->ftbl[i].num)
			break;

	if (i >= factor->ftbl_cnt) {
		val &= ~(masks->num_mask << masks->num_shift);
		val |= (factor->ftbl[0].num & masks->num_mask) <<
			masks->num_shift;

		val &= ~(masks->den_mask << masks->den_shift);
		val |= (factor->ftbl[0].den & masks->den_mask) <<
			masks->den_shift;

		FUNC4(val, factor->base);
	}

	if (factor->lock)
		FUNC2(factor->lock, flags);
}