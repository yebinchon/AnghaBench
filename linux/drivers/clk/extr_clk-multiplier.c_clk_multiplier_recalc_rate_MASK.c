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
struct clk_multiplier {unsigned long shift; int flags; scalar_t__ width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_MULTIPLIER_ZERO_BYPASS ; 
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_multiplier*) ; 
 struct clk_multiplier* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct clk_multiplier *mult = FUNC2(hw);
	unsigned long val;

	val = FUNC1(mult) >> mult->shift;
	val &= FUNC0(mult->width - 1, 0);

	if (!val && mult->flags & CLK_MULTIPLIER_ZERO_BYPASS)
		val = 1;

	return parent_rate * val;
}