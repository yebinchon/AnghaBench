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
struct regmap {int dummy; } ;
struct qcom_cc_desc {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct platform_device*,struct qcom_cc_desc const*) ; 
 int FUNC3 (struct platform_device*,struct qcom_cc_desc const*,struct regmap*) ; 

int FUNC4(struct platform_device *pdev, const struct qcom_cc_desc *desc)
{
	struct regmap *regmap;

	regmap = FUNC2(pdev, desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(pdev, desc, regmap);
}