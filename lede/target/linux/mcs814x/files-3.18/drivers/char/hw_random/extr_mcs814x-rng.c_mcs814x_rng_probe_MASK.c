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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct mcs814x_rng_priv {unsigned long priv; int /*<<< orphan*/  regs; int /*<<< orphan*/  data_read; int /*<<< orphan*/  name; } ;
struct hwrng {unsigned long priv; int /*<<< orphan*/  regs; int /*<<< orphan*/  data_read; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC3 (struct mcs814x_rng_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mcs814x_rng_priv*) ; 
 struct mcs814x_rng_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcs814x_rng_data_read ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct mcs814x_rng_priv*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct resource *res;
	struct mcs814x_rng_priv *priv;
	struct hwrng *rng;
	int ret;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		ret = -ENOMEM;
		goto out;
	}

	rng = FUNC5(sizeof(*rng), GFP_KERNEL);
	if (!rng) {
		ret = -ENOMEM;
		goto out_priv;
	}

	FUNC7(pdev, rng);
	rng->priv = (unsigned long)priv;
	rng->name = pdev->name;
	rng->data_read = mcs814x_rng_data_read;

	priv->regs = FUNC2(&pdev->dev, res);
	if (!priv->regs) {
		ret = -ENOMEM;
		goto out_rng;
	}

	ret = FUNC3(rng);
	if (ret) {
		FUNC0(&pdev->dev, "failed to register hwrng driver\n");
		goto out;
	}

	FUNC1(&pdev->dev, "registered\n");

	return ret;

out_rng:
	FUNC7(pdev, NULL);
	FUNC4(rng);
out_priv:
	FUNC4(priv);
out:
	return ret;
}