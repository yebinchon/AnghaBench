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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lpss_clk_data {char* name; struct clk* clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct lpss_clk_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct lpss_clk_data*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct lpss_clk_data *drvdata;
	struct clk *clk;

	drvdata = FUNC3(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	/* LPSS free running clock */
	drvdata->name = "lpss_clk";
	clk = FUNC2(&pdev->dev, drvdata->name, NULL,
				      0, 100000000);
	if (FUNC0(clk))
		return FUNC1(clk);

	drvdata->clk = clk;
	FUNC4(pdev, drvdata);
	return 0;
}