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
struct m10v_clk_divider {unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_hw*,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct m10v_clk_divider* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct m10v_clk_divider *divider = FUNC3(hw);
	unsigned int val;

	val = FUNC2(divider->reg) >> divider->shift;
	val &= FUNC0(divider->width);

	return FUNC1(hw, parent_rate, val, divider->table,
				   divider->flags, divider->width);
}