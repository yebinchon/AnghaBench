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
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct of_device_id {struct bcm2835_rng_of_data* data; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cleanup; int /*<<< orphan*/  read; int /*<<< orphan*/  init; int /*<<< orphan*/  name; } ;
struct bcm2835_rng_priv {TYPE_1__ rng; int /*<<< orphan*/  mask_interrupts; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct bcm2835_rng_of_data {int /*<<< orphan*/  mask_interrupts; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm2835_rng_cleanup ; 
 int /*<<< orphan*/  bcm2835_rng_init ; 
 int /*<<< orphan*/  bcm2835_rng_of_match ; 
 int /*<<< orphan*/  bcm2835_rng_read ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct bcm2835_rng_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device_node*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct bcm2835_rng_priv*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct bcm2835_rng_of_data *of_data;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	const struct of_device_id *rng_id;
	struct bcm2835_rng_priv *priv;
	struct resource *r;
	int err;

	priv = FUNC8(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC11(pdev, priv);

	r = FUNC10(pdev, IORESOURCE_MEM, 0);

	/* map peripheral */
	priv->base = FUNC7(dev, r);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	/* Clock is optional on most platforms */
	priv->clk = FUNC5(dev, NULL);
	if (FUNC0(priv->clk) && FUNC1(priv->clk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	priv->rng.name = pdev->name;
	priv->rng.init = bcm2835_rng_init;
	priv->rng.read = bcm2835_rng_read;
	priv->rng.cleanup = bcm2835_rng_cleanup;

	if (FUNC4(dev)) {
		rng_id = FUNC9(bcm2835_rng_of_match, np);
		if (!rng_id)
			return -EINVAL;

		/* Check for rng init function, execute it */
		of_data = rng_id->data;
		if (of_data)
			priv->mask_interrupts = of_data->mask_interrupts;
	}

	/* register driver */
	err = FUNC6(dev, &priv->rng);
	if (err)
		FUNC2(dev, "hwrng registration failed\n");
	else
		FUNC3(dev, "hwrng registered\n");

	return err;
}