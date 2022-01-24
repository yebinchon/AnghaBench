#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * d; } ;
struct TYPE_3__ {int /*<<< orphan*/ * d; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  gcc_apq8064_desc ; 
 int /*<<< orphan*/  gcc_msm8960_match_table ; 
 TYPE_2__ hfpll1 ; 
 int /*<<< orphan*/  hfpll1_8064_data ; 
 TYPE_1__ hfpll_l2 ; 
 int /*<<< orphan*/  hfpll_l2_8064_data ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,struct device*) ; 
 struct platform_device* FUNC3 (struct device*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct platform_device*) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct of_device_id *match;
	struct platform_device *tsens;
	int ret;

	match = FUNC2(gcc_msm8960_match_table, &pdev->dev);
	if (!match)
		return -EINVAL;

	ret = FUNC6(dev, "cxo_board", "cxo", 19200000);
	if (ret)
		return ret;

	ret = FUNC6(dev, "pxo_board", "pxo", 27000000);
	if (ret)
		return ret;

	ret = FUNC5(pdev, match->data);
	if (ret)
		return ret;

	if (match->data == &gcc_apq8064_desc) {
		hfpll1.d = &hfpll1_8064_data;
		hfpll_l2.d = &hfpll_l2_8064_data;
	}

	tsens = FUNC3(&pdev->dev, "qcom-tsens", -1,
					      NULL, 0);
	if (FUNC0(tsens))
		return FUNC1(tsens);

	FUNC4(pdev, tsens);

	return 0;
}