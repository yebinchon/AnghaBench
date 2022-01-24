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
struct resource {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int quality; unsigned long priv; int /*<<< orphan*/  name; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; int /*<<< orphan*/  read; } ;
struct omap_rng_dev {int /*<<< orphan*/ * clk; int /*<<< orphan*/ * clk_reg; int /*<<< orphan*/ * base; TYPE_1__ rng; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RNG_REV_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_rng_dev* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct omap_rng_dev*) ; 
 int FUNC13 (struct omap_rng_dev*,struct platform_device*) ; 
 int /*<<< orphan*/  omap_rng_cleanup ; 
 int /*<<< orphan*/  omap_rng_do_read ; 
 int /*<<< orphan*/  omap_rng_init ; 
 int /*<<< orphan*/  FUNC14 (struct omap_rng_dev*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct omap_rng_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct omap_rng_dev *priv;
	struct resource *res;
	struct device *dev = &pdev->dev;
	int ret;

	priv = FUNC11(dev, sizeof(struct omap_rng_dev), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->rng.read = omap_rng_do_read;
	priv->rng.init = omap_rng_init;
	priv->rng.cleanup = omap_rng_cleanup;
	priv->rng.quality = 900;

	priv->rng.priv = (unsigned long)priv;
	FUNC16(pdev, priv);
	priv->dev = dev;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC9(dev, res);
	if (FUNC0(priv->base)) {
		ret = FUNC1(priv->base);
		goto err_ioremap;
	}

	priv->rng.name = FUNC10(dev, FUNC6(dev), GFP_KERNEL);
	if (!priv->rng.name) {
		ret = -ENOMEM;
		goto err_ioremap;
	}

	FUNC18(&pdev->dev);
	ret = FUNC19(&pdev->dev);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to runtime_get device: %d\n", ret);
		FUNC20(&pdev->dev);
		goto err_ioremap;
	}

	priv->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(priv->clk) && FUNC1(priv->clk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (!FUNC0(priv->clk)) {
		ret = FUNC3(priv->clk);
		if (ret) {
			FUNC4(&pdev->dev,
				"Unable to enable the clk: %d\n", ret);
			goto err_register;
		}
	}

	priv->clk_reg = FUNC7(&pdev->dev, "reg");
	if (FUNC0(priv->clk_reg) && FUNC1(priv->clk_reg) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (!FUNC0(priv->clk_reg)) {
		ret = FUNC3(priv->clk_reg);
		if (ret) {
			FUNC4(&pdev->dev,
				"Unable to enable the register clk: %d\n",
				ret);
			goto err_register;
		}
	}

	ret = (dev->of_node) ? FUNC13(priv, pdev) :
				FUNC12(priv);
	if (ret)
		goto err_register;

	ret = FUNC8(&pdev->dev, &priv->rng);
	if (ret)
		goto err_register;

	FUNC5(&pdev->dev, "Random Number Generator ver. %02x\n",
		 FUNC14(priv, RNG_REV_REG));

	return 0;

err_register:
	priv->base = NULL;
	FUNC21(&pdev->dev);
	FUNC17(&pdev->dev);

	FUNC2(priv->clk_reg);
	FUNC2(priv->clk);
err_ioremap:
	FUNC4(dev, "initialization failed.\n");
	return ret;
}