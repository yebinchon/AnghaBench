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
 int PLLA_BASE_IDDQ ; 
 int PLLA_MISC0_DEFAULT_VALUE ; 
 int PLLA_MISC0_LOCK_ENABLE ; 
 int PLLA_MISC0_LOCK_OVERRIDE ; 
 int PLLA_MISC0_WRITE_MASK ; 
 int PLLA_MISC2_DEFAULT_VALUE ; 
 int PLLA_MISC2_EN_DYNRAMP ; 
 int PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*,int,int,int) ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tegra_clk_pll *plla)
{
	u32 mask;
	u32 val = FUNC2(clk_base + plla->params->base_reg);

	plla->params->defaults_set = true;

	if (val & PLL_ENABLE) {
		/*
		 * PLL is ON: check if defaults already set, then set those
		 * that can be updated in flight.
		 */
		if (val & PLLA_BASE_IDDQ) {
			FUNC1("PLL_A boot enabled with IDDQ set\n");
			plla->params->defaults_set = false;
		}

		FUNC1("PLL_A already enabled. Postponing set full defaults\n");

		val = PLLA_MISC0_DEFAULT_VALUE;	/* ignore lock enable */
		mask = PLLA_MISC0_LOCK_ENABLE | PLLA_MISC0_LOCK_OVERRIDE;
		FUNC0(clk_base, plla->params, 0, val,
				~mask & PLLA_MISC0_WRITE_MASK);

		val = PLLA_MISC2_DEFAULT_VALUE; /* ignore all but control bit */
		FUNC0(clk_base, plla->params, 2, val,
				PLLA_MISC2_EN_DYNRAMP);

		/* Enable lock detect */
		val = FUNC2(clk_base + plla->params->ext_misc_reg[0]);
		val &= ~mask;
		val |= PLLA_MISC0_DEFAULT_VALUE & mask;
		FUNC4(val, clk_base + plla->params->ext_misc_reg[0]);
		FUNC3(1);

		return;
	}

	/* set IDDQ, enable lock detect, disable dynamic ramp and SDM */
	val |= PLLA_BASE_IDDQ;
	FUNC4(val, clk_base + plla->params->base_reg);
	FUNC4(PLLA_MISC0_DEFAULT_VALUE,
			clk_base + plla->params->ext_misc_reg[0]);
	FUNC4(PLLA_MISC2_DEFAULT_VALUE,
			clk_base + plla->params->ext_misc_reg[2]);
	FUNC3(1);
}