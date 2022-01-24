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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; struct clk_hw hw; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_1__ clkr; } ;

/* Variables and functions */
 scalar_t__ CMD_REG ; 
 int CMD_UPDATE ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 char* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct clk_rcg2 *rcg)
{
	int count, ret;
	u32 cmd;
	struct clk_hw *hw = &rcg->clkr.hw;
	const char *name = FUNC1(hw);

	ret = FUNC3(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG,
				 CMD_UPDATE, CMD_UPDATE);
	if (ret)
		return ret;

	/* Wait for update to take effect */
	for (count = 500; count > 0; count--) {
		ret = FUNC2(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG, &cmd);
		if (ret)
			return ret;
		if (!(cmd & CMD_UPDATE))
			return 0;
		FUNC4(1);
	}

	FUNC0(1, "%s: rcg didn't update its configuration.", name);
	return -EBUSY;
}