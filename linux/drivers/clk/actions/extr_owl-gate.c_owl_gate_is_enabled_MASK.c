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
struct owl_clk_common {int dummy; } ;
struct owl_gate {int /*<<< orphan*/  gate_hw; struct owl_clk_common common; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct owl_gate* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct owl_clk_common*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct owl_gate *gate = FUNC0(hw);
	struct owl_clk_common *common = &gate->common;

	return FUNC1(common, &gate->gate_hw);
}