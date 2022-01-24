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
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gcc_qcs404_desc ; 
 int /*<<< orphan*/  gpll3_config ; 
 int /*<<< orphan*/  gpll3_out_main ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct regmap *regmap;

	regmap = FUNC3(pdev, &gcc_qcs404_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	FUNC2(&gpll3_out_main, regmap, &gpll3_config);

	return FUNC4(pdev, &gcc_qcs404_desc, regmap);
}