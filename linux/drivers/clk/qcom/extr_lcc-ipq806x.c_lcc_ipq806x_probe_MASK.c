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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  lcc_ipq806x_desc ; 
 int /*<<< orphan*/  pll4 ; 
 int /*<<< orphan*/  pll4_config ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	u32 val;
	struct regmap *regmap;

	regmap = FUNC3(pdev, &lcc_ipq806x_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	/* Configure the rate of PLL4 if the bootloader hasn't already */
	FUNC5(regmap, 0x0, &val);
	if (!val)
		FUNC2(&pll4, regmap, &pll4_config, true);
	/* Enable PLL4 source on the LPASS Primary PLL Mux */
	FUNC6(regmap, 0xc4, 0x1);

	return FUNC4(pdev, &lcc_ipq806x_desc, regmap);
}