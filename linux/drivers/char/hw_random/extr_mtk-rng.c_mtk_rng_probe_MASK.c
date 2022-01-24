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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {unsigned long priv; int quality; int /*<<< orphan*/  read; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; int /*<<< orphan*/  name; } ;
struct mtk_rng {TYPE_1__ rng; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RNG_AUTOSUSPEND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mtk_rng*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct mtk_rng* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_rng_cleanup ; 
 int /*<<< orphan*/  mtk_rng_init ; 
 int /*<<< orphan*/  mtk_rng_read ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct resource *res;
	int ret;
	struct mtk_rng *priv;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev, "no iomem resource\n");
		return -ENXIO;
	}

	priv = FUNC8(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->rng.name = pdev->name;
#ifndef CONFIG_PM
	priv->rng.init = mtk_rng_init;
	priv->rng.cleanup = mtk_rng_cleanup;
#endif
	priv->rng.read = mtk_rng_read;
	priv->rng.priv = (unsigned long)&pdev->dev;
	priv->rng.quality = 900;

	priv->clk = FUNC5(&pdev->dev, "rng");
	if (FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		FUNC2(&pdev->dev, "no clock for device: %d\n", ret);
		return ret;
	}

	priv->base = FUNC7(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	ret = FUNC6(&pdev->dev, &priv->rng);
	if (ret) {
		FUNC2(&pdev->dev, "failed to register rng device: %d\n",
			ret);
		return ret;
	}

	FUNC4(&pdev->dev, priv);
	FUNC11(&pdev->dev, RNG_AUTOSUSPEND_TIMEOUT);
	FUNC12(&pdev->dev);
	FUNC10(&pdev->dev);

	FUNC3(&pdev->dev, "registered RNG driver\n");

	return 0;
}