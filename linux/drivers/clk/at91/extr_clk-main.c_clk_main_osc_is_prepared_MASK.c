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
typedef  int u32 ;
struct regmap {int dummy; } ;
struct clk_main_osc {struct regmap* regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_CKGR_MOR ; 
 int AT91_PMC_MOSCS ; 
 int AT91_PMC_OSCBYPASS ; 
 int /*<<< orphan*/  AT91_PMC_SR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 struct clk_main_osc* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_main_osc *osc = FUNC2(hw);
	struct regmap *regmap = osc->regmap;
	u32 tmp, status;

	FUNC1(regmap, AT91_CKGR_MOR, &tmp);
	if (tmp & AT91_PMC_OSCBYPASS)
		return 1;

	FUNC1(regmap, AT91_PMC_SR, &status);

	return (status & AT91_PMC_MOSCS) && FUNC0(tmp);
}