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
 int /*<<< orphan*/  gcc_sm8150_desc ; 
 struct regmap* FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct regmap *regmap;

	regmap = FUNC2(pdev, &gcc_sm8150_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	/* Disable the GPLL0 active input to NPU and GPU via MISC registers */
	FUNC4(regmap, 0x4d110, 0x3, 0x3);
	FUNC4(regmap, 0x71028, 0x3, 0x3);

	return FUNC3(pdev, &gcc_sm8150_desc, regmap);
}