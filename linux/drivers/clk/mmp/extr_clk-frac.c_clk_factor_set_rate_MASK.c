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
struct mmp_clk_factor_masks {unsigned long factor; unsigned long num_mask; unsigned long num_shift; unsigned long den_mask; unsigned long den_shift; } ;
struct mmp_clk_factor {int ftbl_cnt; scalar_t__ lock; int /*<<< orphan*/  base; TYPE_1__* ftbl; struct mmp_clk_factor_masks* masks; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long den; unsigned long num; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct mmp_clk_factor* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long drate,
				unsigned long prate)
{
	struct mmp_clk_factor *factor = FUNC3(hw);
	struct mmp_clk_factor_masks *masks = factor->masks;
	int i;
	unsigned long val;
	unsigned long rate = 0;
	unsigned long flags = 0;

	for (i = 0; i < factor->ftbl_cnt; i++) {
		rate = (((prate / 10000) * factor->ftbl[i].den) /
			(factor->ftbl[i].num * factor->masks->factor)) * 10000;
		if (rate > drate)
			break;
	}
	if (i > 0)
		i--;

	if (factor->lock)
		FUNC1(factor->lock, flags);

	val = FUNC0(factor->base);

	val &= ~(masks->num_mask << masks->num_shift);
	val |= (factor->ftbl[i].num & masks->num_mask) << masks->num_shift;

	val &= ~(masks->den_mask << masks->den_shift);
	val |= (factor->ftbl[i].den & masks->den_mask) << masks->den_shift;

	FUNC4(val, factor->base);

	if (factor->lock)
		FUNC2(factor->lock, flags);

	return 0;
}