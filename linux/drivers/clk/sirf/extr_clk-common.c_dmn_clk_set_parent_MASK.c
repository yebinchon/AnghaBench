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
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct clk_dmn {int /*<<< orphan*/  regofs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 char* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 struct clk_dmn* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, u8 parent)
{
	struct clk_dmn *clk = FUNC6(hw);
	u32 cfg = FUNC2(clk->regofs);
	const char *name = FUNC1(hw);

	/* parent of io domain can only be pll3 */
	if (FUNC5(name, "io") == 0)
		return -EINVAL;

	cfg &= ~(FUNC0(3) - 1);
	FUNC3(cfg | parent, clk->regofs);
	/* BIT(3) - switching status: 1 - busy, 0 - done */
	while (FUNC2(clk->regofs) & FUNC0(3))
		FUNC4();

	return 0;
}