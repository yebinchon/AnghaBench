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
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMD_REG ; 
 int /*<<< orphan*/  CMD_ROOT_EN ; 
 int ETIMEDOUT ; 
 char* FUNC0 (struct clk_hw*) ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_rcg2* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct clk_rcg2 *rcg = FUNC4(hw);
	const char *name = FUNC0(hw);
	int ret, count;

	ret = FUNC3(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG,
				 CMD_ROOT_EN, CMD_ROOT_EN);
	if (ret)
		return ret;

	/* wait for RCG to turn ON */
	for (count = 500; count > 0; count--) {
		if (FUNC1(hw))
			return 0;

		FUNC5(1);
	}

	FUNC2("%s: RCG did not turn on\n", name);
	return -ETIMEDOUT;
}