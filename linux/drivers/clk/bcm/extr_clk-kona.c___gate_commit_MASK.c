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
struct ccu_data {int dummy; } ;
struct bcm_clk_gate {int hw_sw_sel_bit; int en_bit; int /*<<< orphan*/  status_bit; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ccu_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ccu_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccu_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_clk_gate*) ; 
 int FUNC5 (struct bcm_clk_gate*) ; 
 scalar_t__ FUNC6 (struct bcm_clk_gate*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_clk_gate*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm_clk_gate*) ; 
 scalar_t__ FUNC9 (struct bcm_clk_gate*) ; 

__attribute__((used)) static bool
FUNC10(struct ccu_data *ccu, struct bcm_clk_gate *gate)
{
	u32 reg_val;
	u32 mask;
	bool enabled = false;

	FUNC0(!FUNC4(gate));
	if (!FUNC8(gate))
		return true;		/* Nothing we can change */

	reg_val = FUNC1(ccu, gate->offset);

	/* For a hardware/software gate, set which is in control */
	if (FUNC6(gate)) {
		mask = (u32)1 << gate->hw_sw_sel_bit;
		if (FUNC9(gate))
			reg_val |= mask;
		else
			reg_val &= ~mask;
	}

	/*
	 * If software is in control, enable or disable the gate.
	 * If hardware is, clear the enabled bit for good measure.
	 * If a software controlled gate can't be disabled, we're
	 * required to write a 0 into the enable bit (but the gate
	 * will be enabled).
	 */
	mask = (u32)1 << gate->en_bit;
	if (FUNC9(gate) && (enabled = FUNC5(gate)) &&
			!FUNC7(gate))
		reg_val |= mask;
	else
		reg_val &= ~mask;

	FUNC3(ccu, gate->offset, reg_val);

	/* For a hardware controlled gate, we're done */
	if (!FUNC9(gate))
		return true;

	/* Otherwise wait for the gate to be in desired state */
	return FUNC2(ccu, gate->offset, gate->status_bit, enabled);
}