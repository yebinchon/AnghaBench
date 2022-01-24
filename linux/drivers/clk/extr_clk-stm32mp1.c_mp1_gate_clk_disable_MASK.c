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
struct clk_gate {int /*<<< orphan*/  lock; scalar_t__ reg; int /*<<< orphan*/  bit_idx; } ;
struct TYPE_2__ {scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RCC_CLR ; 
 TYPE_1__ clk_gate_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (struct clk_hw*) ; 
 struct clk_gate* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct clk_gate *gate = FUNC4(hw);
	unsigned long flags = 0;

	if (clk_gate_ops.is_enabled(hw)) {
		FUNC1(gate->lock, flags);
		FUNC5(FUNC0(gate->bit_idx), gate->reg + RCC_CLR);
		FUNC2(gate->lock, flags);
	}
}