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
struct dev_pm_opp {int dummy; } ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk; } ;
struct TYPE_3__ {unsigned int frequency; } ;

/* Variables and functions */
 size_t ARM ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 size_t PLL1_SW ; 
 size_t PLL1_SYS ; 
 size_t PLL2_BUS ; 
 size_t PLL2_PFD2_396M ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 size_t SECONDARY_SEL ; 
 size_t STEP ; 
 struct dev_pm_opp* arm_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* clks ; 
 int /*<<< orphan*/  cpu_dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,unsigned long,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 struct dev_pm_opp* FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC10 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC11 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* freq_table ; 
 unsigned long* imx6_soc_volt ; 
 scalar_t__ FUNC13 (char*) ; 
 struct dev_pm_opp* pu_reg ; 
 unsigned long FUNC14 (struct dev_pm_opp*) ; 
 int FUNC15 (struct dev_pm_opp*,unsigned long,int /*<<< orphan*/ ) ; 
 struct dev_pm_opp* soc_reg ; 

__attribute__((used)) static int FUNC16(struct cpufreq_policy *policy, unsigned int index)
{
	struct dev_pm_opp *opp;
	unsigned long freq_hz, volt, volt_old;
	unsigned int old_freq, new_freq;
	bool pll1_sys_temp_enabled = false;
	int ret;

	new_freq = freq_table[index].frequency;
	freq_hz = new_freq * 1000;
	old_freq = FUNC3(clks[ARM].clk) / 1000;

	opp = FUNC9(cpu_dev, &freq_hz);
	if (FUNC0(opp)) {
		FUNC8(cpu_dev, "failed to find OPP for %ld\n", freq_hz);
		return FUNC1(opp);
	}

	volt = FUNC10(opp);
	FUNC11(opp);

	volt_old = FUNC14(arm_reg);

	FUNC7(cpu_dev, "%u MHz, %ld mV --> %u MHz, %ld mV\n",
		old_freq / 1000, volt_old / 1000,
		new_freq / 1000, volt / 1000);

	/* scaling up?  scale voltage before frequency */
	if (new_freq > old_freq) {
		if (!FUNC0(pu_reg)) {
			ret = FUNC15(pu_reg, imx6_soc_volt[index], 0);
			if (ret) {
				FUNC8(cpu_dev, "failed to scale vddpu up: %d\n", ret);
				return ret;
			}
		}
		ret = FUNC15(soc_reg, imx6_soc_volt[index], 0);
		if (ret) {
			FUNC8(cpu_dev, "failed to scale vddsoc up: %d\n", ret);
			return ret;
		}
		ret = FUNC15(arm_reg, volt, 0);
		if (ret) {
			FUNC8(cpu_dev,
				"failed to scale vddarm up: %d\n", ret);
			return ret;
		}
	}

	/*
	 * The setpoints are selected per PLL/PDF frequencies, so we need to
	 * reprogram PLL for frequency scaling.  The procedure of reprogramming
	 * PLL1 is as below.
	 * For i.MX6UL, it has a secondary clk mux, the cpu frequency change
	 * flow is slightly different from other i.MX6 OSC.
	 * The cpu frequeny change flow for i.MX6(except i.MX6UL) is as below:
	 *  - Enable pll2_pfd2_396m_clk and reparent pll1_sw_clk to it
	 *  - Reprogram pll1_sys_clk and reparent pll1_sw_clk back to it
	 *  - Disable pll2_pfd2_396m_clk
	 */
	if (FUNC13("fsl,imx6ul") ||
	    FUNC13("fsl,imx6ull")) {
		/*
		 * When changing pll1_sw_clk's parent to pll1_sys_clk,
		 * CPU may run at higher than 528MHz, this will lead to
		 * the system unstable if the voltage is lower than the
		 * voltage of 528MHz, so lower the CPU frequency to one
		 * half before changing CPU frequency.
		 */
		FUNC6(clks[ARM].clk, (old_freq >> 1) * 1000);
		FUNC5(clks[PLL1_SW].clk, clks[PLL1_SYS].clk);
		if (freq_hz > FUNC3(clks[PLL2_PFD2_396M].clk))
			FUNC5(clks[SECONDARY_SEL].clk,
				       clks[PLL2_BUS].clk);
		else
			FUNC5(clks[SECONDARY_SEL].clk,
				       clks[PLL2_PFD2_396M].clk);
		FUNC5(clks[STEP].clk, clks[SECONDARY_SEL].clk);
		FUNC5(clks[PLL1_SW].clk, clks[STEP].clk);
		if (freq_hz > FUNC3(clks[PLL2_BUS].clk)) {
			FUNC6(clks[PLL1_SYS].clk, new_freq * 1000);
			FUNC5(clks[PLL1_SW].clk, clks[PLL1_SYS].clk);
		}
	} else {
		FUNC5(clks[STEP].clk, clks[PLL2_PFD2_396M].clk);
		FUNC5(clks[PLL1_SW].clk, clks[STEP].clk);
		if (freq_hz > FUNC3(clks[PLL2_PFD2_396M].clk)) {
			FUNC6(clks[PLL1_SYS].clk, new_freq * 1000);
			FUNC5(clks[PLL1_SW].clk, clks[PLL1_SYS].clk);
		} else {
			/* pll1_sys needs to be enabled for divider rate change to work. */
			pll1_sys_temp_enabled = true;
			FUNC4(clks[PLL1_SYS].clk);
		}
	}

	/* Ensure the arm clock divider is what we expect */
	ret = FUNC6(clks[ARM].clk, new_freq * 1000);
	if (ret) {
		int ret1;

		FUNC8(cpu_dev, "failed to set clock rate: %d\n", ret);
		ret1 = FUNC15(arm_reg, volt_old, 0);
		if (ret1)
			FUNC12(cpu_dev,
				 "failed to restore vddarm voltage: %d\n", ret1);
		return ret;
	}

	/* PLL1 is only needed until after ARM-PODF is set. */
	if (pll1_sys_temp_enabled)
		FUNC2(clks[PLL1_SYS].clk);

	/* scaling down?  scale voltage after frequency */
	if (new_freq < old_freq) {
		ret = FUNC15(arm_reg, volt, 0);
		if (ret)
			FUNC12(cpu_dev,
				 "failed to scale vddarm down: %d\n", ret);
		ret = FUNC15(soc_reg, imx6_soc_volt[index], 0);
		if (ret)
			FUNC12(cpu_dev, "failed to scale vddsoc down: %d\n", ret);
		if (!FUNC0(pu_reg)) {
			ret = FUNC15(pu_reg, imx6_soc_volt[index], 0);
			if (ret)
				FUNC12(cpu_dev, "failed to scale vddpu down: %d\n", ret);
		}
	}

	return 0;
}