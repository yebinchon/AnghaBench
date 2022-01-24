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
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  video_cc_sdm845_desc ; 
 int /*<<< orphan*/  video_pll0 ; 
 int /*<<< orphan*/  video_pll0_config ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct regmap *regmap;

	regmap = FUNC3(pdev, &video_cc_sdm845_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	FUNC2(&video_pll0, regmap, &video_pll0_config);

	return FUNC4(pdev, &video_cc_sdm845_desc, regmap);
}