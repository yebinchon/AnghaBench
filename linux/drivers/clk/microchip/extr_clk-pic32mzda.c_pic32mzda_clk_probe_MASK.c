#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_9__ {int clk_num; struct clk** clks; } ;
struct pic32_clk_common {int /*<<< orphan*/  reg_lock; struct clk* iobase; TYPE_3__* dev; } ;
struct pic32mzda_clk_data {TYPE_1__ failsafe_notifier; TYPE_2__ onecell_data; struct clk** clks; struct pic32_clk_common core; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (size_t*) ; 
 size_t BFRCCLK ; 
 int /*<<< orphan*/  CLK_DIVIDER_POWER_OF_TWO ; 
 int ENOMEM ; 
 size_t FRCCLK ; 
 size_t FRCDIVCLK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 size_t LPRCCLK ; 
 int MAXCLKS ; 
 int /*<<< orphan*/  OSC_FRCDIV_MASK ; 
 int /*<<< orphan*/  OSC_FRCDIV_SHIFT ; 
 int PB1CLK ; 
 int PB7CLK ; 
 size_t PLLCLK ; 
 int /*<<< orphan*/  PLL_ICLK_SHIFT ; 
 size_t POSCCLK ; 
 int FUNC2 (struct clk*) ; 
 int REF1CLK ; 
 int REF5CLK ; 
 size_t SCLK ; 
 size_t SOSCCLK ; 
 size_t UPLLCLK ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 scalar_t__ FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct clk* FUNC6 (TYPE_3__*,char*,char*,int /*<<< orphan*/ ,struct clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk* FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct clk* FUNC8 (TYPE_3__*,char*,char const* const*,int,int /*<<< orphan*/ ,struct clk*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,...) ; 
 struct pic32mzda_clk_data* FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 scalar_t__ FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC13 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/ * periph_clocks ; 
 int /*<<< orphan*/  pic32_fscm_nmi ; 
 struct clk* FUNC15 (int /*<<< orphan*/ *,struct pic32_clk_common*) ; 
 struct clk* FUNC16 (int /*<<< orphan*/ *,struct pic32_clk_common*) ; 
 struct clk* FUNC17 (int /*<<< orphan*/ *,struct pic32_clk_common*) ; 
 struct clk* FUNC18 (int /*<<< orphan*/ *,struct pic32_clk_common*) ; 
 struct clk* FUNC19 (int /*<<< orphan*/ *,struct pic32_clk_common*) ; 
 size_t* pic32mzda_critical_clks ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/ * ref_clks ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  sosc_clk ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sys_mux_clk ; 
 int /*<<< orphan*/  sys_pll ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	const char *const pll_mux_parents[] = {"posc_clk", "frc_clk"};
	struct device_node *np = pdev->dev.of_node;
	struct pic32mzda_clk_data *cd;
	struct pic32_clk_common *core;
	struct clk *pll_mux_clk, *clk;
	struct clk **clks;
	int nr_clks, i, ret;

	cd = FUNC10(&pdev->dev, sizeof(*cd), GFP_KERNEL);
	if (!cd)
		return -ENOMEM;

	core = &cd->core;
	core->iobase = FUNC13(np, 0, FUNC14(np));
	if (FUNC1(core->iobase)) {
		FUNC9(&pdev->dev, "pic32-clk: failed to map registers\n");
		return FUNC2(core->iobase);
	}

	FUNC23(&core->reg_lock);
	core->dev = &pdev->dev;
	clks = &cd->clks[0];

	/* register fixed rate clocks */
	clks[POSCCLK] = FUNC7(&pdev->dev, "posc_clk", NULL,
						0, 24000000);
	clks[FRCCLK] =  FUNC7(&pdev->dev, "frc_clk", NULL,
						0, 8000000);
	clks[BFRCCLK] = FUNC7(&pdev->dev, "bfrc_clk", NULL,
						0, 8000000);
	clks[LPRCCLK] = FUNC7(&pdev->dev, "lprc_clk", NULL,
						0, 32000);
	clks[UPLLCLK] = FUNC7(&pdev->dev, "usbphy_clk", NULL,
						0, 24000000);
	/* fixed rate (optional) clock */
	if (FUNC12(np, "microchip,pic32mzda-sosc", NULL)) {
		FUNC21("pic32-clk: dt requests SOSC.\n");
		clks[SOSCCLK] = FUNC17(&sosc_clk, core);
	}
	/* divider clock */
	clks[FRCDIVCLK] = FUNC6(&pdev->dev, "frcdiv_clk",
					       "frc_clk", 0,
					       core->iobase,
					       OSC_FRCDIV_SHIFT,
					       OSC_FRCDIV_MASK,
					       CLK_DIVIDER_POWER_OF_TWO,
					       &core->reg_lock);
	/* PLL ICLK mux */
	pll_mux_clk = FUNC8(&pdev->dev, "spll_mux_clk",
				       pll_mux_parents, 2, 0,
				       core->iobase + 0x020,
				       PLL_ICLK_SHIFT, 1, 0, &core->reg_lock);
	if (FUNC1(pll_mux_clk))
		FUNC20("spll_mux_clk: clk register failed\n");

	/* PLL */
	clks[PLLCLK] = FUNC18(&sys_pll, core);
	/* SYSTEM clock */
	clks[SCLK] = FUNC19(&sys_mux_clk, core);
	/* Peripheral bus clocks */
	for (nr_clks = PB1CLK, i = 0; nr_clks <= PB7CLK; i++, nr_clks++)
		clks[nr_clks] = FUNC15(&periph_clocks[i],
							  core);
	/* Reference oscillator clock */
	for (nr_clks = REF1CLK, i = 0; nr_clks <= REF5CLK; i++, nr_clks++)
		clks[nr_clks] = FUNC16(&ref_clks[i], core);

	/* register clkdev */
	for (i = 0; i < MAXCLKS; i++) {
		if (FUNC1(clks[i]))
			continue;
		FUNC5(clks[i], NULL, FUNC3(clks[i]));
	}

	/* register clock provider */
	cd->onecell_data.clks = clks;
	cd->onecell_data.clk_num = MAXCLKS;
	ret = FUNC11(np, of_clk_src_onecell_get,
				  &cd->onecell_data);
	if (ret)
		return ret;

	/* force enable critical clocks */
	for (i = 0; i < FUNC0(pic32mzda_critical_clks); i++) {
		clk = clks[pic32mzda_critical_clks[i]];
		if (FUNC4(clk))
			FUNC9(&pdev->dev, "clk_prepare_enable(%s) failed\n",
				FUNC3(clk));
	}

	/* register NMI for failsafe clock monitor */
	cd->failsafe_notifier.notifier_call = pic32_fscm_nmi;
	return FUNC22(&cd->failsafe_notifier);
}