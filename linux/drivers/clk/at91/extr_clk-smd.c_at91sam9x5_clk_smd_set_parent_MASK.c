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
typedef  int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_smd {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_SMD ; 
 int /*<<< orphan*/  AT91_PMC_SMDS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct at91sam9x5_clk_smd* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct at91sam9x5_clk_smd *smd = FUNC1(hw);

	if (index > 1)
		return -EINVAL;

	FUNC0(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMDS,
			   index ? AT91_PMC_SMDS : 0);

	return 0;
}