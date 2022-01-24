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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned long priv; int /*<<< orphan*/  read; int /*<<< orphan*/  init; int /*<<< orphan*/  name; } ;
struct exynos_trng_dev {int /*<<< orphan*/  clk; TYPE_1__ rng; int /*<<< orphan*/  mem; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct exynos_trng_dev* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_trng_do_read ; 
 int /*<<< orphan*/  exynos_trng_init ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct exynos_trng_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct exynos_trng_dev *trng;
	struct resource *res;
	int ret = -ENOMEM;

	trng = FUNC11(&pdev->dev, sizeof(*trng), GFP_KERNEL);
	if (!trng)
		return ret;

	trng->rng.name = FUNC10(&pdev->dev, FUNC6(&pdev->dev),
				      GFP_KERNEL);
	if (!trng->rng.name)
		return ret;

	trng->rng.init = exynos_trng_init;
	trng->rng.read = exynos_trng_do_read;
	trng->rng.priv = (unsigned long) trng;

	FUNC13(pdev, trng);
	trng->dev = &pdev->dev;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	trng->mem = FUNC9(&pdev->dev, res);
	if (FUNC0(trng->mem))
		return FUNC1(trng->mem);

	FUNC15(&pdev->dev);
	ret = FUNC16(&pdev->dev);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Could not get runtime PM.\n");
		goto err_pm_get;
	}

	trng->clk = FUNC7(&pdev->dev, "secss");
	if (FUNC0(trng->clk)) {
		ret = FUNC1(trng->clk);
		FUNC4(&pdev->dev, "Could not get clock.\n");
		goto err_clock;
	}

	ret = FUNC3(trng->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Could not enable the clk.\n");
		goto err_clock;
	}

	ret = FUNC8(&pdev->dev, &trng->rng);
	if (ret) {
		FUNC4(&pdev->dev, "Could not register hwrng device.\n");
		goto err_register;
	}

	FUNC5(&pdev->dev, "Exynos True Random Number Generator.\n");

	return 0;

err_register:
	FUNC2(trng->clk);

err_clock:
	FUNC17(&pdev->dev);

err_pm_get:
	FUNC14(&pdev->dev);

	return ret;
}