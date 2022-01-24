#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct clk_init_data* init; } ;
struct usb2_clock_sel_priv {int extal; int xtal; TYPE_1__ hw; struct clk* base; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char* name; scalar_t__ num_parents; int /*<<< orphan*/ * parent_names; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct usb2_clock_sel_priv*) ; 
 struct clk* FUNC8 (struct device*,char*) ; 
 struct usb2_clock_sel_priv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct usb2_clock_sel_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  usb2_clock_sel_clock_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct usb2_clock_sel_priv *priv;
	struct clk *clk;
	struct clk_init_data init;

	priv = FUNC9(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->base = FUNC10(pdev, 0);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	FUNC13(dev);
	FUNC14(dev);

	clk = FUNC8(dev, "usb_extal");
	if (!FUNC0(clk) && !FUNC4(clk)) {
		priv->extal = !!FUNC3(clk);
		FUNC2(clk);
	}
	clk = FUNC8(dev, "usb_xtal");
	if (!FUNC0(clk) && !FUNC4(clk)) {
		priv->xtal = !!FUNC3(clk);
		FUNC2(clk);
	}

	if (!priv->extal && !priv->xtal) {
		FUNC6(dev, "This driver needs usb_extal or usb_xtal\n");
		return -ENOENT;
	}

	FUNC12(pdev, priv);
	FUNC7(dev, priv);

	init.name = "rcar_usb2_clock_sel";
	init.ops = &usb2_clock_sel_clock_ops;
	init.flags = 0;
	init.parent_names = NULL;
	init.num_parents = 0;
	priv->hw.init = &init;

	clk = FUNC5(NULL, &priv->hw);
	if (FUNC0(clk))
		return FUNC1(clk);

	return FUNC11(np, of_clk_hw_simple_get, &priv->hw);
}