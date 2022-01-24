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
struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;

/* Variables and functions */
 int PLLMB_MISC1_DEFAULT_VALUE ; 
 int PLLMB_MISC1_IDDQ ; 
 int PLLMB_MISC1_LOCK_ENABLE ; 
 int PLLMB_MISC1_LOCK_OVERRIDE ; 
 int PLLMB_MISC1_WRITE_MASK ; 
 int PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tegra_clk_pll *pllmb)
{
	u32 mask, val = FUNC2(clk_base + pllmb->params->base_reg);

	pllmb->params->defaults_set = true;

	if (val & PLL_ENABLE) {

		/*
		 * PLL is ON: check if defaults already set, then set those
		 * that can be updated in flight.
		 */
		val = PLLMB_MISC1_DEFAULT_VALUE & (~PLLMB_MISC1_IDDQ);
		mask = PLLMB_MISC1_LOCK_ENABLE | PLLMB_MISC1_LOCK_OVERRIDE;
		FUNC0(clk_base, pllmb->params, 0, val,
				~mask & PLLMB_MISC1_WRITE_MASK);

		if (!pllmb->params->defaults_set)
			FUNC1("PLL_MB already enabled. Postponing set full defaults\n");
		/* Enable lock detect */
		val = FUNC2(clk_base + pllmb->params->ext_misc_reg[0]);
		val &= ~mask;
		val |= PLLMB_MISC1_DEFAULT_VALUE & mask;
		FUNC4(val, clk_base + pllmb->params->ext_misc_reg[0]);
		FUNC3(1);

		return;
	}

	/* set IDDQ, enable lock detect */
	FUNC4(PLLMB_MISC1_DEFAULT_VALUE,
			clk_base + pllmb->params->ext_misc_reg[0]);
	FUNC3(1);
}