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
struct hi3519_crg_data {int /*<<< orphan*/  clk_data; int /*<<< orphan*/  rstc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hi3519_crg_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct hi3519_crg_data*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct hi3519_crg_data *crg;

	crg = FUNC2(&pdev->dev, sizeof(*crg), GFP_KERNEL);
	if (!crg)
		return -ENOMEM;

	crg->rstc = FUNC5(pdev);
	if (!crg->rstc)
		return -ENOMEM;

	crg->clk_data = FUNC3(pdev);
	if (FUNC0(crg->clk_data)) {
		FUNC4(crg->rstc);
		return FUNC1(crg->clk_data);
	}

	FUNC6(pdev, crg);
	return 0;
}