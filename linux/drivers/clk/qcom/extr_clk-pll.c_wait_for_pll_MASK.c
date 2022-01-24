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
struct clk_pll {int /*<<< orphan*/  status_bit; int /*<<< orphan*/  status_reg; TYPE_1__ clkr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct clk_pll *pll)
{
	u32 val;
	int count;
	int ret;
	const char *name = FUNC2(&pll->clkr.hw);

	/* Wait for pll to enable. */
	for (count = 200; count > 0; count--) {
		ret = FUNC3(pll->clkr.regmap, pll->status_reg, &val);
		if (ret)
			return ret;
		if (val & FUNC0(pll->status_bit))
			return 0;
		FUNC4(1);
	}

	FUNC1(1, "%s didn't enable after voting for it!\n", name);
	return -ETIMEDOUT;
}