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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_rng_dev {int /*<<< orphan*/  clk_reg; int /*<<< orphan*/  clk; TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct omap_rng_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_rng_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_rng_dev*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct omap_rng_dev *priv = FUNC1(pdev);


	priv->pdata->cleanup(priv);

	FUNC3(&pdev->dev);
	FUNC2(&pdev->dev);

	FUNC0(priv->clk);
	FUNC0(priv->clk_reg);

	return 0;
}