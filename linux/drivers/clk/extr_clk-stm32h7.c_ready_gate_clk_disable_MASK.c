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
struct stm32_ready_gate {int /*<<< orphan*/  bit_rdy; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct clk_hw*) ;int /*<<< orphan*/  (* is_enabled ) (struct clk_hw*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int RGATE_TIMEOUT ; 
 TYPE_1__ clk_gate_ops ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 struct clk_gate* FUNC4 (struct clk_hw*) ; 
 struct stm32_ready_gate* FUNC5 (struct clk_gate*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct clk_hw *hw)
{
	struct clk_gate *gate = FUNC4(hw);
	struct stm32_ready_gate *rgate = FUNC5(gate);
	int bit_status;
	unsigned int timeout = RGATE_TIMEOUT;

	if (!clk_gate_ops.is_enabled(hw))
		return;

	clk_gate_ops.disable(hw);

	do {
		bit_status = !!(FUNC1(gate->reg) & FUNC0(rgate->bit_rdy));

		if (bit_status)
			FUNC6(100);

	} while (bit_status && --timeout);
}