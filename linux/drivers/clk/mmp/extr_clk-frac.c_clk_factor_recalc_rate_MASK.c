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
struct mmp_clk_factor_masks {unsigned int num_shift; unsigned int num_mask; unsigned int den_shift; unsigned int den_mask; unsigned int factor; } ;
struct mmp_clk_factor {struct mmp_clk_factor_masks* masks; int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mmp_clk_factor* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct mmp_clk_factor *factor = FUNC1(hw);
	struct mmp_clk_factor_masks *masks = factor->masks;
	unsigned int val, num, den;

	val = FUNC0(factor->base);

	/* calculate numerator */
	num = (val >> masks->num_shift) & masks->num_mask;

	/* calculate denominator */
	den = (val >> masks->den_shift) & masks->den_mask;

	if (!den)
		return 0;

	return (((parent_rate / 10000)  * den) /
			(num * factor->masks->factor)) * 10000;
}