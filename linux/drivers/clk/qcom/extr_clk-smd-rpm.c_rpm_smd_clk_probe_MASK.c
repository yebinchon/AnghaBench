#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rpm_smd_clk_desc {size_t num_clks; struct clk_smd_rpm** clks; } ;
struct rpm_cc {size_t num_clks; struct clk_smd_rpm** clks; } ;
struct qcom_smd_rpm {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_smd_rpm {int /*<<< orphan*/  hw; struct qcom_smd_rpm* rpm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct qcom_smd_rpm*) ; 
 int FUNC1 (struct clk_smd_rpm*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct qcom_smd_rpm* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct rpm_cc* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct rpm_cc*) ; 
 struct rpm_smd_clk_desc* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  qcom_smdrpm_clk_hw_get ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct rpm_cc *rcc;
	int ret;
	size_t num_clks, i;
	struct qcom_smd_rpm *rpm;
	struct clk_smd_rpm **rpm_smd_clks;
	const struct rpm_smd_clk_desc *desc;

	rpm = FUNC3(pdev->dev.parent);
	if (!rpm) {
		FUNC2(&pdev->dev, "Unable to retrieve handle to RPM\n");
		return -ENODEV;
	}

	desc = FUNC7(&pdev->dev);
	if (!desc)
		return -EINVAL;

	rpm_smd_clks = desc->clks;
	num_clks = desc->num_clks;

	rcc = FUNC5(&pdev->dev, sizeof(*rcc), GFP_KERNEL);
	if (!rcc)
		return -ENOMEM;

	rcc->clks = rpm_smd_clks;
	rcc->num_clks = num_clks;

	for (i = 0; i < num_clks; i++) {
		if (!rpm_smd_clks[i])
			continue;

		rpm_smd_clks[i]->rpm = rpm;

		ret = FUNC1(rpm_smd_clks[i]);
		if (ret)
			goto err;
	}

	ret = FUNC0(rpm);
	if (ret)
		goto err;

	for (i = 0; i < num_clks; i++) {
		if (!rpm_smd_clks[i])
			continue;

		ret = FUNC4(&pdev->dev, &rpm_smd_clks[i]->hw);
		if (ret)
			goto err;
	}

	ret = FUNC6(&pdev->dev, qcom_smdrpm_clk_hw_get,
				     rcc);
	if (ret)
		goto err;

	return 0;
err:
	FUNC2(&pdev->dev, "Error registering SMD clock driver (%d)\n", ret);
	return ret;
}