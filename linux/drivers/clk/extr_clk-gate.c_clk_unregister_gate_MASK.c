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
struct clk_gate {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 struct clk_hw* FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_gate*) ; 
 struct clk_gate* FUNC3 (struct clk_hw*) ; 

void FUNC4(struct clk *clk)
{
	struct clk_gate *gate;
	struct clk_hw *hw;

	hw = FUNC0(clk);
	if (!hw)
		return;

	gate = FUNC3(hw);

	FUNC1(clk);
	FUNC2(gate);
}