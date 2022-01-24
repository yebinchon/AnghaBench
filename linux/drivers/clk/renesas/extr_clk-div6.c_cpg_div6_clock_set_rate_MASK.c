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
typedef  int u32 ;
struct div6_clock {unsigned int div; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CPG_DIV6_CKSTP ; 
 int FUNC0 (int) ; 
 int CPG_DIV6_DIV_MASK ; 
 unsigned int FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct div6_clock* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
				   unsigned long parent_rate)
{
	struct div6_clock *clock = FUNC3(hw);
	unsigned int div = FUNC1(rate, parent_rate);
	u32 val;

	clock->div = div;

	val = FUNC2(clock->reg) & ~CPG_DIV6_DIV_MASK;
	/* Only program the new divisor if the clock isn't stopped. */
	if (!(val & CPG_DIV6_CKSTP))
		FUNC4(val | FUNC0(clock->div - 1), clock->reg);

	return 0;
}