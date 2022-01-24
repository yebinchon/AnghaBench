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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  gcc_dfs_clocks ; 
 int /*<<< orphan*/  gcc_sdm845_desc ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct regmap *regmap;
	int ret;

	regmap = FUNC3(pdev, &gcc_sdm845_desc);
	if (FUNC1(regmap))
		return FUNC2(regmap);

	/* Disable the GPLL0 active input to MMSS and GPU via MISC registers */
	FUNC6(regmap, 0x09ffc, 0x3, 0x3);
	FUNC6(regmap, 0x71028, 0x3, 0x3);

	ret = FUNC5(regmap, gcc_dfs_clocks,
					FUNC0(gcc_dfs_clocks));
	if (ret)
		return ret;

	return FUNC4(pdev, &gcc_sdm845_desc, regmap);
}