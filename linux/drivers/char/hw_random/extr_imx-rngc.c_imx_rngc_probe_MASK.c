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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  read; int /*<<< orphan*/  init; int /*<<< orphan*/  name; } ;
struct imx_rngc {int /*<<< orphan*/  clk; TYPE_1__ rng; int /*<<< orphan*/ * dev; int /*<<< orphan*/  rng_op_done; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct imx_rngc* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  imx_rngc_init ; 
 int /*<<< orphan*/  imx_rngc_irq ; 
 int /*<<< orphan*/  FUNC11 (struct imx_rngc*) ; 
 int /*<<< orphan*/  imx_rngc_read ; 
 int FUNC12 (struct imx_rngc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct imx_rngc*) ; 
 scalar_t__ self_test ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct imx_rngc *rngc;
	int ret;
	int irq;

	rngc = FUNC7(&pdev->dev, sizeof(*rngc), GFP_KERNEL);
	if (!rngc)
		return -ENOMEM;

	rngc->base = FUNC8(pdev, 0);
	if (FUNC0(rngc->base))
		return FUNC1(rngc->base);

	rngc->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(rngc->clk)) {
		FUNC4(&pdev->dev, "Can not get rng_clk\n");
		return FUNC1(rngc->clk);
	}

	irq = FUNC14(pdev, 0);
	if (irq <= 0) {
		FUNC4(&pdev->dev, "Couldn't get irq %d\n", irq);
		return irq;
	}

	ret = FUNC3(rngc->clk);
	if (ret)
		return ret;

	ret = FUNC9(&pdev->dev,
			irq, imx_rngc_irq, 0, pdev->name, (void *)rngc);
	if (ret) {
		FUNC4(rngc->dev, "Can't get interrupt working.\n");
		goto err;
	}

	FUNC13(&rngc->rng_op_done);

	rngc->rng.name = pdev->name;
	rngc->rng.init = imx_rngc_init;
	rngc->rng.read = imx_rngc_read;

	rngc->dev = &pdev->dev;
	FUNC15(pdev, rngc);

	FUNC11(rngc);

	if (self_test) {
		ret = FUNC12(rngc);
		if (ret) {
			FUNC4(rngc->dev, "FSL RNGC self test failed.\n");
			goto err;
		}
	}

	ret = FUNC10(&rngc->rng);
	if (ret) {
		FUNC4(&pdev->dev, "FSL RNGC registering failed (%d)\n", ret);
		goto err;
	}

	FUNC5(&pdev->dev, "Freescale RNGC registered.\n");
	return 0;

err:
	FUNC2(rngc->clk);

	return ret;
}