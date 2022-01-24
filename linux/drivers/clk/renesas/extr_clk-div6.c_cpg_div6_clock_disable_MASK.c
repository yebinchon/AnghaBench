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
struct div6_clock {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CPG_DIV6_CKSTP ; 
 int CPG_DIV6_DIV_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct div6_clock* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct div6_clock *clock = FUNC1(hw);
	u32 val;

	val = FUNC0(clock->reg);
	val |= CPG_DIV6_CKSTP;
	/*
	 * DIV6 clocks require the divisor field to be non-zero when stopping
	 * the clock. However, some clocks (e.g. ZB on sh73a0) fail to be
	 * re-enabled later if the divisor field is changed when stopping the
	 * clock
	 */
	if (!(val & CPG_DIV6_DIV_MASK))
		val |= CPG_DIV6_DIV_MASK;
	FUNC2(val, clock->reg);
}