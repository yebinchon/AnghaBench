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
struct stm32_rgate {int /*<<< orphan*/  bit_rdy_idx; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct clk_hw*) ;scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int RGATE_TIMEOUT ; 
 TYPE_1__ clk_gate_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_hw*) ; 
 struct clk_gate* FUNC6 (struct clk_hw*) ; 
 struct stm32_rgate* FUNC7 (struct clk_gate*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw)
{
	struct clk_gate *gate = FUNC6(hw);
	struct stm32_rgate *rgate = FUNC7(gate);
	int bit_status;
	unsigned int timeout = RGATE_TIMEOUT;

	if (clk_gate_ops.is_enabled(hw))
		return 0;

	FUNC1();

	clk_gate_ops.enable(hw);

	do {
		bit_status = !(FUNC3(gate->reg) & FUNC0(rgate->bit_rdy_idx));
		if (bit_status)
			FUNC8(100);

	} while (bit_status && --timeout);

	FUNC2();

	return bit_status;
}