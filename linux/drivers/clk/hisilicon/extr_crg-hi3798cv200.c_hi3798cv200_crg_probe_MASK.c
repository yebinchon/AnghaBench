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
struct hisi_crg_dev {int /*<<< orphan*/  clk_data; int /*<<< orphan*/  rstc; TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* register_clks ) (struct platform_device*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hisi_crg_dev* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct hisi_crg_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct hisi_crg_dev *crg;

	crg = FUNC2(&pdev->dev, sizeof(*crg), GFP_KERNEL);
	if (!crg)
		return -ENOMEM;

	crg->funcs = FUNC5(&pdev->dev);
	if (!crg->funcs)
		return -ENOENT;

	crg->rstc = FUNC4(pdev);
	if (!crg->rstc)
		return -ENOMEM;

	crg->clk_data = crg->funcs->register_clks(pdev);
	if (FUNC0(crg->clk_data)) {
		FUNC3(crg->rstc);
		return FUNC1(crg->clk_data);
	}

	FUNC6(pdev, crg);
	return 0;
}