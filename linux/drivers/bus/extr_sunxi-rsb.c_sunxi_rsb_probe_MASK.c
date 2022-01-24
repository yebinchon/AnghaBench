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
typedef  unsigned long u32 ;
struct sunxi_rsb {scalar_t__ clk; scalar_t__ rstc; scalar_t__ regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ RSB_CCR ; 
 unsigned long FUNC2 (int) ; 
 int RSB_CCR_MAX_CLK_DIV ; 
 unsigned long FUNC3 (unsigned long) ; 
 scalar_t__ RSB_CTRL ; 
 int /*<<< orphan*/  RSB_CTRL_NAME ; 
 unsigned long RSB_CTRL_SOFT_RST ; 
 unsigned long RSB_MAX_FREQ ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int) ; 
 scalar_t__ FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct device*,struct resource*) ; 
 struct sunxi_rsb* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sunxi_rsb*) ; 
 scalar_t__ FUNC14 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC18 (struct sunxi_rsb*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct sunxi_rsb*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int FUNC24 (scalar_t__) ; 
 int FUNC25 (struct sunxi_rsb*) ; 
 int /*<<< orphan*/  sunxi_rsb_irq ; 
 int /*<<< orphan*/  FUNC26 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct resource *r;
	struct sunxi_rsb *rsb;
	unsigned long p_clk_freq;
	u32 clk_delay, clk_freq = 3000000;
	int clk_div, irq, ret;
	u32 reg;

	FUNC17(np, "clock-frequency", &clk_freq);
	if (clk_freq > RSB_MAX_FREQ) {
		FUNC7(dev,
			"clock-frequency (%u Hz) is too high (max = 20MHz)\n",
			clk_freq);
		return -EINVAL;
	}

	rsb = FUNC12(dev, sizeof(*rsb), GFP_KERNEL);
	if (!rsb)
		return -ENOMEM;

	rsb->dev = dev;
	FUNC21(pdev, rsb);
	r = FUNC20(pdev, IORESOURCE_MEM, 0);
	rsb->regs = FUNC11(dev, r);
	if (FUNC0(rsb->regs))
		return FUNC1(rsb->regs);

	irq = FUNC19(pdev, 0);
	if (irq < 0)
		return irq;

	rsb->clk = FUNC10(dev, NULL);
	if (FUNC0(rsb->clk)) {
		ret = FUNC1(rsb->clk);
		FUNC7(dev, "failed to retrieve clk: %d\n", ret);
		return ret;
	}

	ret = FUNC6(rsb->clk);
	if (ret) {
		FUNC7(dev, "failed to enable clk: %d\n", ret);
		return ret;
	}

	p_clk_freq = FUNC5(rsb->clk);

	rsb->rstc = FUNC14(dev, NULL);
	if (FUNC0(rsb->rstc)) {
		ret = FUNC1(rsb->rstc);
		FUNC7(dev, "failed to retrieve reset controller: %d\n", ret);
		goto err_clk_disable;
	}

	ret = FUNC24(rsb->rstc);
	if (ret) {
		FUNC7(dev, "failed to deassert reset line: %d\n", ret);
		goto err_clk_disable;
	}

	FUNC15(&rsb->complete);
	FUNC16(&rsb->lock);

	/* reset the controller */
	FUNC26(RSB_CTRL_SOFT_RST, rsb->regs + RSB_CTRL);
	FUNC22(rsb->regs + RSB_CTRL, reg,
			   !(reg & RSB_CTRL_SOFT_RST), 1000, 100000);

	/*
	 * Clock frequency and delay calculation code is from
	 * Allwinner U-boot sources.
	 *
	 * From A83 user manual:
	 * bus clock frequency = parent clock frequency / (2 * (divider + 1))
	 */
	clk_div = p_clk_freq / clk_freq / 2;
	if (!clk_div)
		clk_div = 1;
	else if (clk_div > RSB_CCR_MAX_CLK_DIV + 1)
		clk_div = RSB_CCR_MAX_CLK_DIV + 1;

	clk_delay = clk_div >> 1;
	if (!clk_delay)
		clk_delay = 1;

	FUNC8(dev, "RSB running at %lu Hz\n", p_clk_freq / clk_div / 2);
	FUNC26(FUNC3(clk_delay) | FUNC2(clk_div - 1),
	       rsb->regs + RSB_CCR);

	ret = FUNC13(dev, irq, sunxi_rsb_irq, 0, RSB_CTRL_NAME, rsb);
	if (ret) {
		FUNC7(dev, "can't register interrupt handler irq %d: %d\n",
			irq, ret);
		goto err_reset_assert;
	}

	/* initialize all devices on the bus into RSB mode */
	ret = FUNC25(rsb);
	if (ret)
		FUNC9(dev, "Initialize device mode failed: %d\n", ret);

	FUNC18(rsb);

	return 0;

err_reset_assert:
	FUNC23(rsb->rstc);

err_clk_disable:
	FUNC4(rsb->clk);

	return ret;
}