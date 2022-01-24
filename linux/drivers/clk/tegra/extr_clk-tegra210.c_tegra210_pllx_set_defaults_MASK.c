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
typedef  int u32 ;
struct tegra_clk_pll {TYPE_1__* params; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;

/* Variables and functions */
 int PLLX_MISC0_DEFAULT_VALUE ; 
 int PLLX_MISC0_LOCK_ENABLE ; 
 int PLLX_MISC1_DEFAULT_VALUE ; 
 int PLLX_MISC2_DEFAULT_VALUE ; 
 int PLLX_MISC2_DYNRAMP_STEPA_MASK ; 
 int PLLX_MISC2_DYNRAMP_STEPA_SHIFT ; 
 int PLLX_MISC2_DYNRAMP_STEPB_MASK ; 
 int PLLX_MISC2_DYNRAMP_STEPB_SHIFT ; 
 int PLLX_MISC3_DEFAULT_VALUE ; 
 int PLLX_MISC4_DEFAULT_VALUE ; 
 int PLLX_MISC5_DEFAULT_VALUE ; 
 int PLL_ENABLE ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct tegra_clk_pll *pllx)
{
	u32 val;
	u32 step_a, step_b;

	pllx->params->defaults_set = true;

	/* Get ready dyn ramp state machine settings */
	FUNC1(&pllx->hw, &step_a, &step_b);
	val = PLLX_MISC2_DEFAULT_VALUE & (~PLLX_MISC2_DYNRAMP_STEPA_MASK) &
		(~PLLX_MISC2_DYNRAMP_STEPB_MASK);
	val |= step_a << PLLX_MISC2_DYNRAMP_STEPA_SHIFT;
	val |= step_b << PLLX_MISC2_DYNRAMP_STEPB_SHIFT;

	if (FUNC3(clk_base + pllx->params->base_reg) & PLL_ENABLE) {

		/*
		 * PLL is ON: check if defaults already set, then set those
		 * that can be updated in flight.
		 */
		FUNC0(pllx);

		if (!pllx->params->defaults_set)
			FUNC2("PLL_X already enabled. Postponing set full defaults\n");
		/* Configure dyn ramp, disable lock override */
		FUNC5(val, clk_base + pllx->params->ext_misc_reg[2]);

		/* Enable lock detect */
		val = FUNC3(clk_base + pllx->params->ext_misc_reg[0]);
		val &= ~PLLX_MISC0_LOCK_ENABLE;
		val |= PLLX_MISC0_DEFAULT_VALUE & PLLX_MISC0_LOCK_ENABLE;
		FUNC5(val, clk_base + pllx->params->ext_misc_reg[0]);
		FUNC4(1);

		return;
	}

	/* Enable lock detect and CPU output */
	FUNC5(PLLX_MISC0_DEFAULT_VALUE, clk_base +
			pllx->params->ext_misc_reg[0]);

	/* Setup */
	FUNC5(PLLX_MISC1_DEFAULT_VALUE, clk_base +
			pllx->params->ext_misc_reg[1]);

	/* Configure dyn ramp state machine, disable lock override */
	FUNC5(val, clk_base + pllx->params->ext_misc_reg[2]);

	/* Set IDDQ */
	FUNC5(PLLX_MISC3_DEFAULT_VALUE, clk_base +
			pllx->params->ext_misc_reg[3]);

	/* Disable SDM */
	FUNC5(PLLX_MISC4_DEFAULT_VALUE, clk_base +
			pllx->params->ext_misc_reg[4]);
	FUNC5(PLLX_MISC5_DEFAULT_VALUE, clk_base +
			pllx->params->ext_misc_reg[5]);
	FUNC4(1);
}