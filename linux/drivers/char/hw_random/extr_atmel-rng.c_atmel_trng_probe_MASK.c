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
struct TYPE_2__ {int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct atmel_trng {int /*<<< orphan*/  clk; TYPE_1__ rng; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_trng*) ; 
 int /*<<< orphan*/  atmel_trng_read ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct atmel_trng* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct atmel_trng*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct atmel_trng *trng;
	struct resource *res;
	int ret;

	trng = FUNC8(&pdev->dev, sizeof(*trng), GFP_KERNEL);
	if (!trng)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	trng->base = FUNC7(&pdev->dev, res);
	if (FUNC0(trng->base))
		return FUNC1(trng->base);

	trng->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(trng->clk))
		return FUNC1(trng->clk);

	ret = FUNC4(trng->clk);
	if (ret)
		return ret;

	FUNC2(trng);
	trng->rng.name = pdev->name;
	trng->rng.read = atmel_trng_read;

	ret = FUNC6(&pdev->dev, &trng->rng);
	if (ret)
		goto err_register;

	FUNC10(pdev, trng);

	return 0;

err_register:
	FUNC3(trng->clk);
	return ret;
}