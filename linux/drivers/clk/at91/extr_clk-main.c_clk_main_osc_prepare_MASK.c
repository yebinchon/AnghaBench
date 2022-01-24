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
 int AT91_PMC_KEY ; 
 int AT91_PMC_MOSCEN ; 
 int AT91_PMC_OSCBYPASS ; 
 int MOR_KEY_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 struct clk_main_osc* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct clk_main_osc *osc = FUNC4(hw);
	struct regmap *regmap = osc->regmap;
	u32 tmp;

	FUNC2(regmap, AT91_CKGR_MOR, &tmp);
	tmp &= ~MOR_KEY_MASK;

	if (tmp & AT91_PMC_OSCBYPASS)
		return 0;

	if (!(tmp & AT91_PMC_MOSCEN)) {
		tmp |= AT91_PMC_MOSCEN | AT91_PMC_KEY;
		FUNC3(regmap, AT91_CKGR_MOR, tmp);
	}

	while (!FUNC0(regmap))
		FUNC1();

	return 0;
}