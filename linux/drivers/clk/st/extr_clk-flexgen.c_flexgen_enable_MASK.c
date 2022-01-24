#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_5__ {struct clk_hw hw; } ;
struct TYPE_4__ {struct clk_hw hw; } ;
struct flexgen {TYPE_2__ fgate; TYPE_1__ pgate; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* enable ) (struct clk_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 TYPE_3__ clk_gate_ops ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_hw*) ; 
 struct flexgen* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct flexgen *flexgen = FUNC5(hw);
	struct clk_hw *pgate_hw = &flexgen->pgate.hw;
	struct clk_hw *fgate_hw = &flexgen->fgate.hw;

	FUNC0(pgate_hw, hw);
	FUNC0(fgate_hw, hw);

	clk_gate_ops.enable(pgate_hw);

	clk_gate_ops.enable(fgate_hw);

	FUNC2("%s: flexgen output enabled\n", FUNC1(hw));
	return 0;
}