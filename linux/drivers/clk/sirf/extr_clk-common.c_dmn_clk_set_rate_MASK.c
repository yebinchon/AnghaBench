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
struct clk_hw {int dummy; } ;
struct clk_dmn {int /*<<< orphan*/  regofs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 char* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 struct clk_dmn* FUNC7 (struct clk_hw*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
	unsigned long parent_rate)
{
	struct clk_dmn *clk = FUNC7(hw);
	unsigned long fin;
	unsigned ratio, wait, hold, reg;
	const char *name = FUNC2(hw);
	unsigned bits = (FUNC6(name, "mem") == 0) ? 3 : 4;

	fin = parent_rate;
	ratio = fin / rate;

	if (FUNC8(ratio < 2 || ratio > FUNC0(bits + 1)))
		return -EINVAL;

	FUNC1(fin % rate);

	wait = (ratio >> 1) - 1;
	hold = ratio - wait - 2;

	reg = FUNC3(clk->regofs);
	reg &= ~(((FUNC0(bits) - 1) << 16) | ((FUNC0(bits) - 1) << 20));
	reg |= (wait << 16) | (hold << 20) | FUNC0(25);
	FUNC4(reg, clk->regofs);

	/* waiting FCD been effective */
	while (FUNC3(clk->regofs) & FUNC0(25))
		FUNC5();

	return 0;
}