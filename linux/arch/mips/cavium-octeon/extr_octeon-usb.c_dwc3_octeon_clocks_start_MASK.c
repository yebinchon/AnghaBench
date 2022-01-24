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
struct TYPE_2__ {int uphy_rst; int uahc_rst; int uctl_rst; int h_clkdiv_rst; size_t h_clkdiv_sel; int h_clk_en; int ref_clk_sel; int ref_clk_fsel; int mpll_multiplier; int ssc_en; int ref_ssp_en; int hs_power_en; int ss_power_en; int csclk_en; scalar_t__ drd_mode; scalar_t__ ref_clk_div2; } ;
union cvm_usbdrd_uctl_ctl {void* u64; TYPE_1__ s; } ;
typedef  size_t u64 ;
typedef  int u32 ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t OCTEON_H_CLKDIV_SEL ; 
 size_t OCTEON_MAX_H_CLK_RATE ; 
 size_t OCTEON_MIN_H_CLK_RATE ; 
 size_t* clk_div ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*,size_t) ; 
 size_t FUNC4 () ; 
 int FUNC5 (scalar_t__,char*,char const**) ; 
 int FUNC6 (scalar_t__,char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct device *dev, u64 base)
{
	union cvm_usbdrd_uctl_ctl uctl_ctl;
	int ref_clk_sel = 2;
	u64 div;
	u32 clock_rate;
	int mpll_mul;
	int i;
	u64 h_clk_rate;
	u64 uctl_ctl_reg = base;

	if (dev->of_node) {
		const char *ss_clock_type;
		const char *hs_clock_type;

		i = FUNC6(dev->of_node,
					 "refclk-frequency", &clock_rate);
		if (i) {
			FUNC7("No UCTL \"refclk-frequency\"\n");
			return -EINVAL;
		}
		i = FUNC5(dev->of_node,
					    "refclk-type-ss", &ss_clock_type);
		if (i) {
			FUNC7("No UCTL \"refclk-type-ss\"\n");
			return -EINVAL;
		}
		i = FUNC5(dev->of_node,
					    "refclk-type-hs", &hs_clock_type);
		if (i) {
			FUNC7("No UCTL \"refclk-type-hs\"\n");
			return -EINVAL;
		}
		if (FUNC8("dlmc_ref_clk0", ss_clock_type) == 0) {
			if (FUNC8(hs_clock_type, "dlmc_ref_clk0") == 0)
				ref_clk_sel = 0;
			else if (FUNC8(hs_clock_type, "pll_ref_clk") == 0)
				ref_clk_sel = 2;
			else
				FUNC7("Invalid HS clock type %s, using  pll_ref_clk instead\n",
				       hs_clock_type);
		} else if (FUNC8(ss_clock_type, "dlmc_ref_clk1") == 0) {
			if (FUNC8(hs_clock_type, "dlmc_ref_clk1") == 0)
				ref_clk_sel = 1;
			else if (FUNC8(hs_clock_type, "pll_ref_clk") == 0)
				ref_clk_sel = 3;
			else {
				FUNC7("Invalid HS clock type %s, using  pll_ref_clk instead\n",
				       hs_clock_type);
				ref_clk_sel = 3;
			}
		} else
			FUNC7("Invalid SS clock type %s, using  dlmc_ref_clk0 instead\n",
			       ss_clock_type);

		if ((ref_clk_sel == 0 || ref_clk_sel == 1) &&
				  (clock_rate != 100000000))
			FUNC7("Invalid UCTL clock rate of %u, using 100000000 instead\n",
			       clock_rate);

	} else {
		FUNC7("No USB UCTL device node\n");
		return -EINVAL;
	}

	/*
	 * Step 1: Wait for all voltages to be stable...that surely
	 *         happened before starting the kernel. SKIP
	 */

	/* Step 2: Select GPIO for overcurrent indication, if desired. SKIP */

	/* Step 3: Assert all resets. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.uphy_rst = 1;
	uctl_ctl.s.uahc_rst = 1;
	uctl_ctl.s.uctl_rst = 1;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/* Step 4a: Reset the clock dividers. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.h_clkdiv_rst = 1;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/* Step 4b: Select controller clock frequency. */
	for (div = 0; div < OCTEON_H_CLKDIV_SEL; div++) {
		h_clk_rate = FUNC4() / clk_div[div];
		if (h_clk_rate <= OCTEON_MAX_H_CLK_RATE &&
				 h_clk_rate >= OCTEON_MIN_H_CLK_RATE)
			break;
	}
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.h_clkdiv_sel = div;
	uctl_ctl.s.h_clk_en = 1;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	if ((div != uctl_ctl.s.h_clkdiv_sel) || (!uctl_ctl.s.h_clk_en)) {
		FUNC2(dev, "dwc3 controller clock init failure.\n");
			return -EINVAL;
	}

	/* Step 4c: Deassert the controller clock divider reset. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.h_clkdiv_rst = 0;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/* Step 5a: Reference clock configuration. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.ref_clk_sel = ref_clk_sel;
	uctl_ctl.s.ref_clk_fsel = 0x07;
	uctl_ctl.s.ref_clk_div2 = 0;
	switch (clock_rate) {
	default:
		FUNC2(dev, "Invalid ref_clk %u, using 100000000 instead\n",
			clock_rate);
		/* fall through */
	case 100000000:
		mpll_mul = 0x19;
		if (ref_clk_sel < 2)
			uctl_ctl.s.ref_clk_fsel = 0x27;
		break;
	case 50000000:
		mpll_mul = 0x32;
		break;
	case 125000000:
		mpll_mul = 0x28;
		break;
	}
	uctl_ctl.s.mpll_multiplier = mpll_mul;

	/* Step 5b: Configure and enable spread-spectrum for SuperSpeed. */
	uctl_ctl.s.ssc_en = 1;

	/* Step 5c: Enable SuperSpeed. */
	uctl_ctl.s.ref_ssp_en = 1;

	/* Step 5d: Cofngiure PHYs. SKIP */

	/* Step 6a & 6b: Power up PHYs. */
	uctl_ctl.s.hs_power_en = 1;
	uctl_ctl.s.ss_power_en = 1;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/* Step 7: Wait 10 controller-clock cycles to take effect. */
	FUNC9(10);

	/* Step 8a: Deassert UCTL reset signal. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.uctl_rst = 0;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/* Step 8b: Wait 10 controller-clock cycles. */
	FUNC9(10);

	/* Steo 8c: Setup power-power control. */
	if (FUNC3(dev, base)) {
		FUNC2(dev, "Error configuring power.\n");
		return -EINVAL;
	}

	/* Step 8d: Deassert UAHC reset signal. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.uahc_rst = 0;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/* Step 8e: Wait 10 controller-clock cycles. */
	FUNC9(10);

	/* Step 9: Enable conditional coprocessor clock of UCTL. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.csclk_en = 1;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	/*Step 10: Set for host mode only. */
	uctl_ctl.u64 = FUNC0(uctl_ctl_reg);
	uctl_ctl.s.drd_mode = 0;
	FUNC1(uctl_ctl_reg, uctl_ctl.u64);

	return 0;
}