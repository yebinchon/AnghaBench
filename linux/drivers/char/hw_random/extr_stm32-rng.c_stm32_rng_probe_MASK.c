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
struct TYPE_2__ {unsigned long priv; int quality; int /*<<< orphan*/  read; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  init; int /*<<< orphan*/  name; } ;
struct stm32_rng_private {TYPE_1__ rng; int /*<<< orphan*/  ced; int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct stm32_rng_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct stm32_rng_private* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stm32_rng_cleanup ; 
 int /*<<< orphan*/  stm32_rng_init ; 
 int /*<<< orphan*/  stm32_rng_read ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct device_node *np = ofdev->dev.of_node;
	struct stm32_rng_private *priv;
	struct resource res;
	int err;

	priv = FUNC7(dev, sizeof(struct stm32_rng_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	err = FUNC9(np, 0, &res);
	if (err)
		return err;

	priv->base = FUNC6(dev, &res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC4(&ofdev->dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	priv->rst = FUNC8(&ofdev->dev, NULL);
	if (!FUNC0(priv->rst)) {
		FUNC14(priv->rst);
		FUNC16(2);
		FUNC15(priv->rst);
	}

	priv->ced = FUNC10(np, "clock-error-detect");

	FUNC3(dev, priv);

	priv->rng.name = FUNC2(dev),
#ifndef CONFIG_PM
	priv->rng.init = stm32_rng_init,
	priv->rng.cleanup = stm32_rng_cleanup,
#endif
	priv->rng.read = stm32_rng_read,
	priv->rng.priv = (unsigned long) dev;
	priv->rng.quality = 900;

	FUNC12(dev, 100);
	FUNC13(dev);
	FUNC11(dev);

	return FUNC5(dev, &priv->rng);
}