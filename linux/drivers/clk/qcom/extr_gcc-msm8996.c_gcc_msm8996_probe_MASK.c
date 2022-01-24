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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  gcc_msm8996_desc ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct regmap *regmap;

	regmap = FUNC3(pdev, &gcc_msm8996_desc);
	if (FUNC1(regmap))
		return FUNC2(regmap);

	/*
	 * Set the HMSS_AHB_CLK_SLEEP_ENA bit to allow the hmss_ahb_clk to be
	 * turned off by hardware during certain apps low power modes.
	 */
	FUNC5(regmap, 0x52008, FUNC0(21), FUNC0(21));

	return FUNC4(pdev, &gcc_msm8996_desc, regmap);
}