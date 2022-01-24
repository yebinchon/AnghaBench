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
struct clk_branch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk_branch*,int,int (*) (struct clk_branch const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int FUNC2 (struct clk_hw*) ; 
 struct clk_branch* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, bool en,
		bool (check_halt)(const struct clk_branch *, bool))
{
	struct clk_branch *br = FUNC3(hw);
	int ret;

	if (en) {
		ret = FUNC2(hw);
		if (ret)
			return ret;
	} else {
		FUNC1(hw);
	}

	return FUNC0(br, en, check_halt);
}