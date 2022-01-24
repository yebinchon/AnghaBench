#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_3__ {struct clk_hw hw; } ;
struct ti_adpll_clkout_data {TYPE_1__ gate; } ;
struct TYPE_4__ {int (* enable ) (struct clk_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 TYPE_2__ clk_gate_ops ; 
 int FUNC1 (struct clk_hw*) ; 
 struct ti_adpll_clkout_data* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct ti_adpll_clkout_data *co = FUNC2(hw);
	struct clk_hw *gate_hw = &co->gate.hw;

	FUNC0(gate_hw, hw);

	return clk_gate_ops.enable(gate_hw);
}