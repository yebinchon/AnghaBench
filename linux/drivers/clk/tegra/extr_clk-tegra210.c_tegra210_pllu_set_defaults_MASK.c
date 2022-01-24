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
struct tegra_clk_pll_params {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;

/* Variables and functions */
 int PLLU_MISC0_DEFAULT_VALUE ; 
 int PLLU_MISC0_LOCK_ENABLE ; 
 int PLLU_MISC1_DEFAULT_VALUE ; 
 int PLLU_MISC1_LOCK_OVERRIDE ; 
 int PLL_ENABLE ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_clk_pll_params*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tegra_clk_pll_params *pllu)
{
	u32 val = FUNC2(clk_base + pllu->base_reg);

	pllu->defaults_set = true;

	if (val & PLL_ENABLE) {

		/*
		 * PLL is ON: check if defaults already set, then set those
		 * that can be updated in flight.
		 */
		FUNC0(pllu, false);
		if (!pllu->defaults_set)
			FUNC1("PLL_U already enabled. Postponing set full defaults\n");

		/* Enable lock detect */
		val = FUNC2(clk_base + pllu->ext_misc_reg[0]);
		val &= ~PLLU_MISC0_LOCK_ENABLE;
		val |= PLLU_MISC0_DEFAULT_VALUE & PLLU_MISC0_LOCK_ENABLE;
		FUNC4(val, clk_base + pllu->ext_misc_reg[0]);

		val = FUNC2(clk_base + pllu->ext_misc_reg[1]);
		val &= ~PLLU_MISC1_LOCK_OVERRIDE;
		val |= PLLU_MISC1_DEFAULT_VALUE & PLLU_MISC1_LOCK_OVERRIDE;
		FUNC4(val, clk_base + pllu->ext_misc_reg[1]);
		FUNC3(1);

		return;
	}

	/* set IDDQ, enable lock detect */
	FUNC4(PLLU_MISC0_DEFAULT_VALUE,
			clk_base + pllu->ext_misc_reg[0]);
	FUNC4(PLLU_MISC1_DEFAULT_VALUE,
			clk_base + pllu->ext_misc_reg[1]);
	FUNC3(1);
}