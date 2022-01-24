#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int clk_num; struct clk** clks; } ;
struct TYPE_5__ {TYPE_1__ clk_data; struct clk** clk_table; int /*<<< orphan*/ * syscon_base; } ;

/* Variables and functions */
 size_t ARTPEC6_CLK_CPU ; 
 size_t ARTPEC6_CLK_CPU_PERIPH ; 
 size_t ARTPEC6_CLK_DBG_PCLK ; 
 int ARTPEC6_CLK_NUMCLOCKS ; 
 size_t ARTPEC6_CLK_SPI_PCLK ; 
 size_t ARTPEC6_CLK_SPI_SSPCLK ; 
 size_t ARTPEC6_CLK_UART_PCLK ; 
 size_t ARTPEC6_CLK_UART_REFCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* clkdata ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC6 (struct device_node*,int) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 int /*<<< orphan*/ * FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct device_node *np)
{
	int i;
	const char *sys_refclk_name;
	u32 pll_mode, pll_m, pll_n;
	struct clk **clks;

	/* Mandatory parent clock. */
	i = FUNC8(np, "clock-names", "sys_refclk");
	if (i < 0)
		return;

	sys_refclk_name = FUNC6(np, i);

	clkdata = FUNC4(sizeof(*clkdata), GFP_KERNEL);
	if (!clkdata)
		return;

	clks = clkdata->clk_table;

	for (i = 0; i < ARTPEC6_CLK_NUMCLOCKS; ++i)
		clks[i] = FUNC1(-EPROBE_DEFER);

	clkdata->syscon_base = FUNC7(np, 0);
	FUNC0(clkdata->syscon_base == NULL);

	/* Read PLL1 factors configured by boot strap pins. */
	pll_mode = (FUNC9(clkdata->syscon_base) >> 6) & 3;
	switch (pll_mode) {
	case 0:		/* DDR3-2133 mode */
		pll_m = 4;
		pll_n = 85;
		break;
	case 1:		/* DDR3-1866 mode */
		pll_m = 6;
		pll_n = 112;
		break;
	case 2:		/* DDR3-1600 mode */
		pll_m = 4;
		pll_n = 64;
		break;
	case 3:		/* DDR3-1333 mode */
		pll_m = 8;
		pll_n = 106;
		break;
	}

	clks[ARTPEC6_CLK_CPU] =
	    FUNC2(NULL, "cpu", sys_refclk_name, 0, pll_n,
				      pll_m);
	clks[ARTPEC6_CLK_CPU_PERIPH] =
	    FUNC2(NULL, "cpu_periph", "cpu", 0, 1, 2);

	/* EPROBE_DEFER on the apb_clock is not handled in amba devices. */
	clks[ARTPEC6_CLK_UART_PCLK] =
	    FUNC2(NULL, "uart_pclk", "cpu", 0, 1, 8);
	clks[ARTPEC6_CLK_UART_REFCLK] =
	    FUNC3(NULL, "uart_ref", sys_refclk_name, 0,
				    50000000);

	clks[ARTPEC6_CLK_SPI_PCLK] =
	    FUNC2(NULL, "spi_pclk", "cpu", 0, 1, 8);
	clks[ARTPEC6_CLK_SPI_SSPCLK] =
	    FUNC3(NULL, "spi_sspclk", sys_refclk_name, 0,
				    50000000);

	clks[ARTPEC6_CLK_DBG_PCLK] =
	    FUNC2(NULL, "dbg_pclk", "cpu", 0, 1, 8);

	clkdata->clk_data.clks = clkdata->clk_table;
	clkdata->clk_data.clk_num = ARTPEC6_CLK_NUMCLOCKS;

	FUNC5(np, of_clk_src_onecell_get, &clkdata->clk_data);
}