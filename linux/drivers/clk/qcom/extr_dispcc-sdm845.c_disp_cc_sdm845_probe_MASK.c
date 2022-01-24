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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regmap*,struct alpha_pll_config*) ; 
 int /*<<< orphan*/  disp_cc_pll0 ; 
 int /*<<< orphan*/  disp_cc_sdm845_desc ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct regmap *regmap;
	struct alpha_pll_config disp_cc_pll0_config = {};

	regmap = FUNC3(pdev, &disp_cc_sdm845_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	disp_cc_pll0_config.l = 0x2c;
	disp_cc_pll0_config.alpha = 0xcaaa;

	FUNC2(&disp_cc_pll0, regmap, &disp_cc_pll0_config);

	/* Enable hardware clock gating for DSI and MDP clocks */
	FUNC5(regmap, 0x8000, 0x7f0, 0x7f0);

	return FUNC4(pdev, &disp_cc_sdm845_desc, regmap);
}