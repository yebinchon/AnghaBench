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
typedef  int /*<<< orphan*/  u8 ;
struct clk_core {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_parent ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_core*,struct clk_core*,struct clk_core*) ; 
 struct clk_core* FUNC1 (struct clk_core*,struct clk_core*) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_core*,struct clk_core*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_core*,struct clk_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct clk_core*,struct clk_core*) ; 

__attribute__((used)) static int FUNC8(struct clk_core *core, struct clk_core *parent,
			    u8 p_index)
{
	unsigned long flags;
	int ret = 0;
	struct clk_core *old_parent;

	old_parent = FUNC1(core, parent);

	FUNC6(core, parent);

	/* change clock input source */
	if (parent && core->ops->set_parent)
		ret = core->ops->set_parent(core->hw, p_index);

	FUNC7(core, parent);

	if (ret) {
		flags = FUNC2();
		FUNC4(core, old_parent);
		FUNC3(flags);
		FUNC0(core, old_parent, parent);

		return ret;
	}

	FUNC0(core, parent, old_parent);

	return 0;
}