#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpm_clk_desc {size_t num_clks; struct clk_rpm** clks; } ;
struct rpm_cc {size_t num_clks; int /*<<< orphan*/  xo_lock; struct clk_rpm** clks; } ;
struct qcom_rpm {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_rpm {int /*<<< orphan*/  hw; struct rpm_cc* rpm_cc; struct qcom_rpm* rpm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct clk_rpm*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 struct qcom_rpm* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct rpm_cc* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpm_cc*) ; 
 struct rpm_clk_desc* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  qcom_rpm_clk_hw_get ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct rpm_cc *rcc;
	int ret;
	size_t num_clks, i;
	struct qcom_rpm *rpm;
	struct clk_rpm **rpm_clks;
	const struct rpm_clk_desc *desc;

	rpm = FUNC2(pdev->dev.parent);
	if (!rpm) {
		FUNC1(&pdev->dev, "Unable to retrieve handle to RPM\n");
		return -ENODEV;
	}

	desc = FUNC7(&pdev->dev);
	if (!desc)
		return -EINVAL;

	rpm_clks = desc->clks;
	num_clks = desc->num_clks;

	rcc = FUNC4(&pdev->dev, sizeof(*rcc), GFP_KERNEL);
	if (!rcc)
		return -ENOMEM;

	rcc->clks = rpm_clks;
	rcc->num_clks = num_clks;
	FUNC5(&rcc->xo_lock);

	for (i = 0; i < num_clks; i++) {
		if (!rpm_clks[i])
			continue;

		rpm_clks[i]->rpm = rpm;
		rpm_clks[i]->rpm_cc = rcc;

		ret = FUNC0(rpm_clks[i]);
		if (ret)
			goto err;
	}

	for (i = 0; i < num_clks; i++) {
		if (!rpm_clks[i])
			continue;

		ret = FUNC3(&pdev->dev, &rpm_clks[i]->hw);
		if (ret)
			goto err;
	}

	ret = FUNC6(pdev->dev.of_node, qcom_rpm_clk_hw_get,
				     rcc);
	if (ret)
		goto err;

	return 0;
err:
	FUNC1(&pdev->dev, "Error registering RPM Clock driver (%d)\n", ret);
	return ret;
}