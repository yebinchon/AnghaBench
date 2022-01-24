#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;

/* Variables and functions */
 TYPE_1__ clk_gate_ops ; 
 struct clk_hw* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_hw*) ; 
 scalar_t__ FUNC4 (struct clk_hw*) ; 
 int FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct clk_hw *hwp;
	int pll_status;
	int ret;

	if (clk_gate_ops.is_enabled(hw))
		return 0;

	hwp = FUNC0(hw);

	pll_status = FUNC3(hwp);

	if (pll_status)
		FUNC1(hwp);

	ret = clk_gate_ops.enable(hw);

	if (pll_status)
		FUNC2(hwp);

	return ret;
}