#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct s3c24xx_dclk_drv_data {int /*<<< orphan*/  clkout1_num_parents; int /*<<< orphan*/  clkout1_parent_names; int /*<<< orphan*/  clkout0_num_parents; int /*<<< orphan*/  clkout0_parent_names; int /*<<< orphan*/  mux_num_parents; int /*<<< orphan*/  mux_parent_names; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_6__ {int num; struct clk_hw** hws; } ;
struct s3c24xx_dclk {TYPE_3__ dclk0_div_change_nb; TYPE_3__ dclk1_div_change_nb; int /*<<< orphan*/  dclk_lock; struct clk_hw* base; TYPE_1__ clk_data; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;
struct TYPE_9__ {int /*<<< orphan*/  hws; } ;
struct TYPE_7__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int DCLK_MAX_CLKS ; 
 size_t DIV_DCLK0 ; 
 size_t DIV_DCLK1 ; 
 int ENOMEM ; 
 size_t GATE_DCLK0 ; 
 size_t GATE_DCLK1 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 size_t MUX_CLKOUT0 ; 
 size_t MUX_CLKOUT1 ; 
 size_t MUX_DCLK0 ; 
 size_t MUX_DCLK1 ; 
 int FUNC1 (struct clk_hw*) ; 
 TYPE_5__ clk_data ; 
 int FUNC2 (struct clk_hw*,char*,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,struct clk_hw*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,struct clk_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_hw*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_hw*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 struct clk_hw* FUNC10 (int /*<<< orphan*/ *,struct resource*) ; 
 struct s3c24xx_dclk* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (struct platform_device*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct s3c24xx_dclk*) ; 
 int /*<<< orphan*/  s3c24xx_dclk0_div_notify ; 
 int /*<<< orphan*/  s3c24xx_dclk1_div_notify ; 
 struct clk_hw* FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct s3c24xx_dclk*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct s3c24xx_dclk *s3c24xx_dclk;
	struct resource *mem;
	struct s3c24xx_dclk_drv_data *dclk_variant;
	struct clk_hw **clk_table;
	int ret, i;

	s3c24xx_dclk = FUNC11(&pdev->dev,
				    FUNC17(s3c24xx_dclk, clk_data.hws,
						DCLK_MAX_CLKS),
				    GFP_KERNEL);
	if (!s3c24xx_dclk)
		return -ENOMEM;

	clk_table = s3c24xx_dclk->clk_data.hws;

	s3c24xx_dclk->dev = &pdev->dev;
	s3c24xx_dclk->clk_data.num = DCLK_MAX_CLKS;
	FUNC14(pdev, s3c24xx_dclk);
	FUNC16(&s3c24xx_dclk->dclk_lock);

	mem = FUNC13(pdev, IORESOURCE_MEM, 0);
	s3c24xx_dclk->base = FUNC10(&pdev->dev, mem);
	if (FUNC0(s3c24xx_dclk->base))
		return FUNC1(s3c24xx_dclk->base);

	dclk_variant = (struct s3c24xx_dclk_drv_data *)
				FUNC12(pdev)->driver_data;


	clk_table[MUX_DCLK0] = FUNC5(&pdev->dev, "mux_dclk0",
				dclk_variant->mux_parent_names,
				dclk_variant->mux_num_parents, 0,
				s3c24xx_dclk->base, 1, 1, 0,
				&s3c24xx_dclk->dclk_lock);
	clk_table[MUX_DCLK1] = FUNC5(&pdev->dev, "mux_dclk1",
				dclk_variant->mux_parent_names,
				dclk_variant->mux_num_parents, 0,
				s3c24xx_dclk->base, 17, 1, 0,
				&s3c24xx_dclk->dclk_lock);

	clk_table[DIV_DCLK0] = FUNC3(&pdev->dev, "div_dclk0",
				"mux_dclk0", 0, s3c24xx_dclk->base,
				4, 4, 0, &s3c24xx_dclk->dclk_lock);
	clk_table[DIV_DCLK1] = FUNC3(&pdev->dev, "div_dclk1",
				"mux_dclk1", 0, s3c24xx_dclk->base,
				20, 4, 0, &s3c24xx_dclk->dclk_lock);

	clk_table[GATE_DCLK0] = FUNC4(&pdev->dev, "gate_dclk0",
				"div_dclk0", CLK_SET_RATE_PARENT,
				s3c24xx_dclk->base, 0, 0,
				&s3c24xx_dclk->dclk_lock);
	clk_table[GATE_DCLK1] = FUNC4(&pdev->dev, "gate_dclk1",
				"div_dclk1", CLK_SET_RATE_PARENT,
				s3c24xx_dclk->base, 16, 0,
				&s3c24xx_dclk->dclk_lock);

	clk_table[MUX_CLKOUT0] = FUNC15(&pdev->dev,
				"clkout0", dclk_variant->clkout0_parent_names,
				dclk_variant->clkout0_num_parents, 4, 7);
	clk_table[MUX_CLKOUT1] = FUNC15(&pdev->dev,
				"clkout1", dclk_variant->clkout1_parent_names,
				dclk_variant->clkout1_num_parents, 8, 7);

	for (i = 0; i < DCLK_MAX_CLKS; i++)
		if (FUNC0(clk_table[i])) {
			FUNC9(&pdev->dev, "clock %d failed to register\n", i);
			ret = FUNC1(clk_table[i]);
			goto err_clk_register;
		}

	ret = FUNC2(clk_table[MUX_DCLK0], "dclk0", NULL);
	if (!ret)
		ret = FUNC2(clk_table[MUX_DCLK1], "dclk1",
					     NULL);
	if (!ret)
		ret = FUNC2(clk_table[MUX_CLKOUT0],
					     "clkout0", NULL);
	if (!ret)
		ret = FUNC2(clk_table[MUX_CLKOUT1],
					     "clkout1", NULL);
	if (ret) {
		FUNC9(&pdev->dev, "failed to register aliases, %d\n", ret);
		goto err_clk_register;
	}

	s3c24xx_dclk->dclk0_div_change_nb.notifier_call =
						s3c24xx_dclk0_div_notify;

	s3c24xx_dclk->dclk1_div_change_nb.notifier_call =
						s3c24xx_dclk1_div_notify;

	ret = FUNC7(clk_table[DIV_DCLK0]->clk,
				    &s3c24xx_dclk->dclk0_div_change_nb);
	if (ret)
		goto err_clk_register;

	ret = FUNC7(clk_table[DIV_DCLK1]->clk,
				    &s3c24xx_dclk->dclk1_div_change_nb);
	if (ret)
		goto err_dclk_notify;

	return 0;

err_dclk_notify:
	FUNC8(clk_table[DIV_DCLK0]->clk,
				&s3c24xx_dclk->dclk0_div_change_nb);
err_clk_register:
	for (i = 0; i < DCLK_MAX_CLKS; i++)
		if (clk_table[i] && !FUNC0(clk_table[i]))
			FUNC6(clk_table[i]);

	return ret;
}