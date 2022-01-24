#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  hw; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct clk_alpha_pll *pll, u32 mask, bool inverse,
			const char *action)
{
	u32 val;
	int count;
	int ret;
	const char *name = FUNC2(&pll->clkr.hw);

	ret = FUNC3(pll->clkr.regmap, FUNC0(pll), &val);
	if (ret)
		return ret;

	for (count = 100; count > 0; count--) {
		ret = FUNC3(pll->clkr.regmap, FUNC0(pll), &val);
		if (ret)
			return ret;
		if (inverse && !(val & mask))
			return 0;
		else if ((val & mask) == mask)
			return 0;

		FUNC4(1);
	}

	FUNC1(1, "%s failed to %s!\n", name, action);
	return -ETIMEDOUT;
}