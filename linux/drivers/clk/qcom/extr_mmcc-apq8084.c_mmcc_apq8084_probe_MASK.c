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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ *,int) ; 
 struct regmap* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmcc_apq8084_desc ; 
 int /*<<< orphan*/  mmpll1 ; 
 int /*<<< orphan*/  mmpll1_config ; 
 int /*<<< orphan*/  mmpll3 ; 
 int /*<<< orphan*/  mmpll3_config ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret;
	struct regmap *regmap;

	ret = FUNC2(pdev, &mmcc_apq8084_desc);
	if (ret)
		return ret;

	regmap = FUNC1(&pdev->dev, NULL);
	FUNC0(&mmpll1, regmap, &mmpll1_config, true);
	FUNC0(&mmpll3, regmap, &mmpll3_config, false);

	return 0;
}