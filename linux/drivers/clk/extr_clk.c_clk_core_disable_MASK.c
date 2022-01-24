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
struct clk_core {int enable_count; int flags; struct clk_core* parent; int /*<<< orphan*/  hw; TYPE_1__* ops; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int CLK_IS_CRITICAL ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_core*) ; 

__attribute__((used)) static void FUNC5(struct clk_core *core)
{
	FUNC1(&enable_lock);

	if (!core)
		return;

	if (FUNC0(core->enable_count == 0, "%s already disabled\n", core->name))
		return;

	if (FUNC0(core->enable_count == 1 && core->flags & CLK_IS_CRITICAL,
	    "Disabling critical %s\n", core->name))
		return;

	if (--core->enable_count > 0)
		return;

	FUNC4(core);

	if (core->ops->disable)
		core->ops->disable(core->hw);

	FUNC3(core);

	FUNC5(core->parent);
}