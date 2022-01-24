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
struct alchemy_fgcs_clk {int shift; int /*<<< orphan*/  reglock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long,unsigned long,int,int,unsigned long*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct alchemy_fgcs_clk* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
				 unsigned long parent_rate)
{
	struct alchemy_fgcs_clk *c = FUNC5(hw);
	unsigned long div, v, flags, ret;
	int sh = c->shift + 2;

	if (!rate || !parent_rate || rate > (parent_rate / 2))
		return -EINVAL;
	ret = FUNC0(rate, parent_rate, 2, 512, &div);
	FUNC3(c->reglock, flags);
	v = FUNC1(c->reg);
	v &= ~(0xff << sh);
	v |= div << sh;
	FUNC2(v, c->reg);
	FUNC4(c->reglock, flags);

	return 0;
}