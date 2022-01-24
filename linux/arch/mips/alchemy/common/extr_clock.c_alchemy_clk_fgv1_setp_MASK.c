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
typedef  scalar_t__ u8 ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int shift; int /*<<< orphan*/  reglock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct alchemy_fgcs_clk* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, u8 index)
{
	struct alchemy_fgcs_clk *c = FUNC4(hw);
	unsigned long v, flags;

	FUNC2(c->reglock, flags);
	v = FUNC0(c->reg);
	if (index)
		v |= (1 << c->shift);
	else
		v &= ~(1 << c->shift);
	FUNC1(v, c->reg);
	FUNC3(c->reglock, flags);

	return 0;
}