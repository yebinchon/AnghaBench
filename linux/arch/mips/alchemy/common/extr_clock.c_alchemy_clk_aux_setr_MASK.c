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
struct clk_hw {int dummy; } ;
struct alchemy_auxpll_clk {unsigned long maxmult; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 struct alchemy_auxpll_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw,
				unsigned long rate,
				unsigned long parent_rate)
{
	struct alchemy_auxpll_clk *a = FUNC1(hw);
	unsigned long d = rate;

	if (rate)
		d /= parent_rate;
	else
		d = 0;

	/* minimum is 84MHz, max is 756-1032 depending on variant */
	if (((d < 7) && (d != 0)) || (d > a->maxmult))
		return -EINVAL;

	FUNC0(d, a->reg);
	return 0;
}