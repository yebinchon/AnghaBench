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
struct flexgen {TYPE_1__ fgate; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* is_enabled ) (struct clk_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 TYPE_2__ clk_gate_ops ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct flexgen* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct flexgen *flexgen = FUNC2(hw);
	struct clk_hw *fgate_hw = &flexgen->fgate.hw;

	FUNC0(fgate_hw, hw);

	if (!clk_gate_ops.is_enabled(fgate_hw))
		return 0;

	return 1;
}