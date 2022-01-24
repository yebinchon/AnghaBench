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
struct div6_clock {int /*<<< orphan*/  reg; scalar_t__ div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CPG_DIV6_CKSTP ; 
 int FUNC0 (scalar_t__) ; 
 int CPG_DIV6_DIV_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct div6_clock* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct div6_clock *clock = FUNC2(hw);
	u32 val;

	val = (FUNC1(clock->reg) & ~(CPG_DIV6_DIV_MASK | CPG_DIV6_CKSTP))
	    | FUNC0(clock->div - 1);
	FUNC3(val, clock->reg);

	return 0;
}