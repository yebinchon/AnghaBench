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
 unsigned int CLK_DIS_WAIT_MASK ; 
 int CLK_DIS_WAIT_SHIFT ; 
 unsigned int CX_GMU_CBCR_SLEEP_MASK ; 
 unsigned int CX_GMU_CBCR_SLEEP_SHIFT ; 
 int CX_GMU_CBCR_WAKE_MASK ; 
 int CX_GMU_CBCR_WAKE_SHIFT ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gpu_cc_pll1 ; 
 int /*<<< orphan*/  gpu_cc_pll1_config ; 
 int /*<<< orphan*/  gpu_cc_sdm845_desc ; 
 struct regmap* FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct regmap *regmap;
	unsigned int value, mask;

	regmap = FUNC3(pdev, &gpu_cc_sdm845_desc);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	FUNC2(&gpu_cc_pll1, regmap, &gpu_cc_pll1_config);

	/*
	 * Configure gpu_cc_cx_gmu_clk with recommended
	 * wakeup/sleep settings
	 */
	mask = CX_GMU_CBCR_WAKE_MASK << CX_GMU_CBCR_WAKE_SHIFT;
	mask |= CX_GMU_CBCR_SLEEP_MASK << CX_GMU_CBCR_SLEEP_SHIFT;
	value = 0xf << CX_GMU_CBCR_WAKE_SHIFT | 0xf << CX_GMU_CBCR_SLEEP_SHIFT;
	FUNC5(regmap, 0x1098, mask, value);

	/* Configure clk_dis_wait for gpu_cx_gdsc */
	FUNC5(regmap, 0x106c, CLK_DIS_WAIT_MASK,
						8 << CLK_DIS_WAIT_SHIFT);

	return FUNC4(pdev, &gpu_cc_sdm845_desc, regmap);
}