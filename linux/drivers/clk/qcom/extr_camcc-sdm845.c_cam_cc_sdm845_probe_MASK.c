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
struct alpha_pll_config {int l; int alpha; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  cam_cc_pll0 ; 
 int /*<<< orphan*/  cam_cc_pll1 ; 
 int /*<<< orphan*/  cam_cc_pll2 ; 
 int /*<<< orphan*/  cam_cc_pll3 ; 
 int /*<<< orphan*/  cam_cc_sdm845_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regmap*,struct alpha_pll_config*) ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct regmap *regmap;
	struct alpha_pll_config cam_cc_pll_config = { };

	regmap = FUNC3(pdev, &cam_cc_sdm845_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	cam_cc_pll_config.l = 0x1f;
	cam_cc_pll_config.alpha = 0x4000;
	FUNC2(&cam_cc_pll0, regmap, &cam_cc_pll_config);

	cam_cc_pll_config.l = 0x2a;
	cam_cc_pll_config.alpha = 0x1556;
	FUNC2(&cam_cc_pll1, regmap, &cam_cc_pll_config);

	cam_cc_pll_config.l = 0x32;
	cam_cc_pll_config.alpha = 0x0;
	FUNC2(&cam_cc_pll2, regmap, &cam_cc_pll_config);

	cam_cc_pll_config.l = 0x14;
	FUNC2(&cam_cc_pll3, regmap, &cam_cc_pll_config);

	return FUNC4(pdev, &cam_cc_sdm845_desc, regmap);
}