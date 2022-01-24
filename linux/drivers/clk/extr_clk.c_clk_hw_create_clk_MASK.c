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
struct device {int dummy; } ;
struct clk_hw {struct clk_core* core; } ;
struct clk_core {int /*<<< orphan*/  ref; int /*<<< orphan*/  owner; } ;
struct clk {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clk* FUNC0 (struct clk_hw*) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (struct clk_hw*) ; 
 struct clk* FUNC4 (struct clk_core*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_core*,struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct clk *FUNC9(struct device *dev, struct clk_hw *hw,
			      const char *dev_id, const char *con_id)
{
	struct clk *clk;
	struct clk_core *core;

	/* This is to allow this function to be chained to others */
	if (FUNC3(hw))
		return FUNC0(hw);

	core = hw->core;
	clk = FUNC4(core, dev_id, con_id);
	if (FUNC2(clk))
		return clk;
	clk->dev = dev;

	if (!FUNC8(core->owner)) {
		FUNC6(clk);
		return FUNC1(-ENOENT);
	}

	FUNC7(&core->ref);
	FUNC5(core, clk);

	return clk;
}