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

/* Variables and functions */
 scalar_t__ PLLU_BASE ; 
 int PLLU_BASE_CLKENABLE_USB ; 
 int PLLU_BASE_OVERRIDE ; 
 scalar_t__ PLLU_HW_PWRDN_CFG0 ; 
 int PLLU_HW_PWRDN_CFG0_CLK_ENABLE_SWCTL ; 
 int PLLU_HW_PWRDN_CFG0_CLK_SWITCH_SWCTL ; 
 int PLLU_HW_PWRDN_CFG0_IDDQ_PD_INCLUDE ; 
 int PLLU_HW_PWRDN_CFG0_SEQ_ENABLE ; 
 int PLLU_HW_PWRDN_CFG0_USE_LOCKDET ; 
 int PLLU_HW_PWRDN_CFG0_USE_SWITCH_DETECT ; 
 int PLL_ENABLE ; 
 scalar_t__ UTMIPLL_HW_PWRDN_CFG0 ; 
 int UTMIPLL_HW_PWRDN_CFG0_SEQ_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XUSB_PLL_CFG0 ; 
 int XUSB_PLL_CFG0_PLLU_LOCK_DLY_MASK ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  pll_u_vco_params ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(void)
{
	u32 reg;
	int err;

	FUNC3(&pll_u_vco_params);
	/* skip initialization when pllu is in hw controlled mode */
	reg = FUNC1(clk_base + PLLU_BASE);
	if (reg & PLLU_BASE_OVERRIDE) {
		if (!(reg & PLL_ENABLE)) {
			err = FUNC2();
			if (err < 0) {
				FUNC0(1);
				return err;
			}
		}
		/* enable hw controlled mode */
		reg = FUNC1(clk_base + PLLU_BASE);
		reg &= ~PLLU_BASE_OVERRIDE;
		FUNC6(reg, clk_base + PLLU_BASE);

		reg = FUNC1(clk_base + PLLU_HW_PWRDN_CFG0);
		reg |= PLLU_HW_PWRDN_CFG0_IDDQ_PD_INCLUDE |
		       PLLU_HW_PWRDN_CFG0_USE_SWITCH_DETECT |
		       PLLU_HW_PWRDN_CFG0_USE_LOCKDET;
		reg &= ~(PLLU_HW_PWRDN_CFG0_CLK_ENABLE_SWCTL |
			PLLU_HW_PWRDN_CFG0_CLK_SWITCH_SWCTL);
		FUNC7(reg, clk_base + PLLU_HW_PWRDN_CFG0);

		reg = FUNC1(clk_base + XUSB_PLL_CFG0);
		reg &= ~XUSB_PLL_CFG0_PLLU_LOCK_DLY_MASK;
		FUNC7(reg, clk_base + XUSB_PLL_CFG0);
		FUNC5(1);

		reg = FUNC1(clk_base + PLLU_HW_PWRDN_CFG0);
		reg |= PLLU_HW_PWRDN_CFG0_SEQ_ENABLE;
		FUNC7(reg, clk_base + PLLU_HW_PWRDN_CFG0);
		FUNC5(1);

		reg = FUNC1(clk_base + PLLU_BASE);
		reg &= ~PLLU_BASE_CLKENABLE_USB;
		FUNC7(reg, clk_base + PLLU_BASE);
	}

	/* enable UTMIPLL hw control if not yet done by the bootloader */
	reg = FUNC1(clk_base + UTMIPLL_HW_PWRDN_CFG0);
	if (!(reg & UTMIPLL_HW_PWRDN_CFG0_SEQ_ENABLE))
		FUNC4();

	return 0;
}