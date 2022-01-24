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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {int sysbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_9XX_CLK_DEV_DIV_REG ; 
 int /*<<< orphan*/  SYS_9XX_CLK_DEV_SEL_REG ; 
 int /*<<< orphan*/  SYS_9XX_PLL_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_9XX_PLL_CTRL2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SYS_9XX_POWER_ON_RESET_CFG ; 
 int /*<<< orphan*/  SYS_CLK_DEV_DIV_REG ; 
 int /*<<< orphan*/  SYS_CLK_DEV_SEL_REG ; 
 int /*<<< orphan*/  SYS_PLL_CTRL0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SYS_PLL_CTRL2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SYS_POWER_ON_RESET_CFG ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 TYPE_1__* FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC9(int node)
{
	u32 ctrl_val0, ctrl_val2, vco_post_div, pll_post_div, cpu_xlp9xx;
	u32 mdiv, fdiv, pll_out_freq_den, reg_select, ref_div, pic_div;
	u64 sysbase, pll_out_freq_num, ref_clk_select, clockbase, ref_clk;

	sysbase = FUNC7(node)->sysbase;
	clockbase = FUNC6(node);
	cpu_xlp9xx = FUNC4();

	/* Find ref_clk_base */
	if (cpu_xlp9xx)
		ref_clk_select = (FUNC8(sysbase,
				SYS_9XX_POWER_ON_RESET_CFG) >> 18) & 0x3;
	else
		ref_clk_select = (FUNC8(sysbase,
					SYS_POWER_ON_RESET_CFG) >> 18) & 0x3;
	switch (ref_clk_select) {
	case 0:
		ref_clk = 200000000ULL;
		ref_div = 3;
		break;
	case 1:
		ref_clk = 100000000ULL;
		ref_div = 1;
		break;
	case 2:
		ref_clk = 125000000ULL;
		ref_div = 1;
		break;
	case 3:
		ref_clk = 400000000ULL;
		ref_div = 3;
		break;
	}

	/* Find the clock source PLL device for PIC */
	if (cpu_xlp9xx) {
		reg_select = FUNC8(clockbase,
				SYS_9XX_CLK_DEV_SEL_REG) & 0x3;
		switch (reg_select) {
		case 0:
			ctrl_val0 = FUNC8(clockbase,
					SYS_9XX_PLL_CTRL0);
			ctrl_val2 = FUNC8(clockbase,
					SYS_9XX_PLL_CTRL2);
			break;
		case 1:
			ctrl_val0 = FUNC8(clockbase,
					FUNC0(0));
			ctrl_val2 = FUNC8(clockbase,
					FUNC1(0));
			break;
		case 2:
			ctrl_val0 = FUNC8(clockbase,
					FUNC0(1));
			ctrl_val2 = FUNC8(clockbase,
					FUNC1(1));
			break;
		case 3:
			ctrl_val0 = FUNC8(clockbase,
					FUNC0(2));
			ctrl_val2 = FUNC8(clockbase,
					FUNC1(2));
			break;
		}
	} else {
		reg_select = (FUNC8(sysbase,
					SYS_CLK_DEV_SEL_REG) >> 22) & 0x3;
		switch (reg_select) {
		case 0:
			ctrl_val0 = FUNC8(sysbase,
					SYS_PLL_CTRL0);
			ctrl_val2 = FUNC8(sysbase,
					SYS_PLL_CTRL2);
			break;
		case 1:
			ctrl_val0 = FUNC8(sysbase,
					FUNC2(0));
			ctrl_val2 = FUNC8(sysbase,
					FUNC3(0));
			break;
		case 2:
			ctrl_val0 = FUNC8(sysbase,
					FUNC2(1));
			ctrl_val2 = FUNC8(sysbase,
					FUNC3(1));
			break;
		case 3:
			ctrl_val0 = FUNC8(sysbase,
					FUNC2(2));
			ctrl_val2 = FUNC8(sysbase,
					FUNC3(2));
			break;
		}
	}

	vco_post_div = (ctrl_val0 >> 5) & 0x7;
	pll_post_div = (ctrl_val0 >> 24) & 0x7;
	mdiv = ctrl_val2 & 0xff;
	fdiv = (ctrl_val2 >> 8) & 0x1fff;

	/* Find PLL post divider value */
	switch (pll_post_div) {
	case 1:
		pll_post_div = 2;
		break;
	case 3:
		pll_post_div = 4;
		break;
	case 7:
		pll_post_div = 8;
		break;
	case 6:
		pll_post_div = 16;
		break;
	case 0:
	default:
		pll_post_div = 1;
		break;
	}

	fdiv = fdiv/(1 << 13);
	pll_out_freq_num = ((ref_clk >> 1) * (6 + mdiv)) + fdiv;
	pll_out_freq_den = (1 << vco_post_div) * pll_post_div * ref_div;

	if (pll_out_freq_den > 0)
		FUNC5(pll_out_freq_num, pll_out_freq_den);

	/* PIC post divider, which happens after PLL */
	if (cpu_xlp9xx)
		pic_div = FUNC8(clockbase,
				SYS_9XX_CLK_DEV_DIV_REG) & 0x3;
	else
		pic_div = (FUNC8(sysbase,
					SYS_CLK_DEV_DIV_REG) >> 22) & 0x3;
	FUNC5(pll_out_freq_num, 1 << pic_div);

	return pll_out_freq_num;
}