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
struct xgene_rng_dev {int irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  csr_base; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned long priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct resource*) ; 
 struct xgene_rng_dev* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xgene_rng_dev*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct xgene_rng_dev*) ; 
 TYPE_1__ xgene_rng_func ; 
 int /*<<< orphan*/  xgene_rng_irq_handler ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct resource *res;
	struct xgene_rng_dev *ctx;
	int rc = 0;

	ctx = FUNC12(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = &pdev->dev;
	FUNC16(pdev, ctx);

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	ctx->csr_base = FUNC11(&pdev->dev, res);
	if (FUNC0(ctx->csr_base))
		return FUNC1(ctx->csr_base);

	rc = FUNC14(pdev, 0);
	if (rc < 0) {
		FUNC5(&pdev->dev, "No IRQ resource\n");
		return rc;
	}
	ctx->irq = rc;

	FUNC4(&pdev->dev, "APM X-Gene RNG BASE %p ALARM IRQ %d",
		ctx->csr_base, ctx->irq);

	rc = FUNC13(&pdev->dev, ctx->irq, xgene_rng_irq_handler, 0,
				FUNC6(&pdev->dev), ctx);
	if (rc) {
		FUNC5(&pdev->dev, "Could not request RNG alarm IRQ\n");
		return rc;
	}

	/* Enable IP clock */
	ctx->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC0(ctx->clk)) {
		FUNC7(&pdev->dev, "Couldn't get the clock for RNG\n");
	} else {
		rc = FUNC3(ctx->clk);
		if (rc) {
			FUNC7(&pdev->dev,
				 "clock prepare enable failed for RNG");
			return rc;
		}
	}

	xgene_rng_func.priv = (unsigned long) ctx;

	rc = FUNC10(&pdev->dev, &xgene_rng_func);
	if (rc) {
		FUNC5(&pdev->dev, "RNG registering failed error %d\n", rc);
		if (!FUNC0(ctx->clk))
			FUNC2(ctx->clk);
		return rc;
	}

	rc = FUNC8(&pdev->dev, 1);
	if (rc) {
		FUNC5(&pdev->dev, "RNG device_init_wakeup failed error %d\n",
			rc);
		if (!FUNC0(ctx->clk))
			FUNC2(ctx->clk);
		return rc;
	}

	return 0;
}