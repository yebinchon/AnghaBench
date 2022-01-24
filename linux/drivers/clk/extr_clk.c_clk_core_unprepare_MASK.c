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
struct clk_core {int prepare_count; int flags; scalar_t__ enable_count; struct clk_core* parent; int /*<<< orphan*/  hw; TYPE_1__* ops; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unprepare ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int CLK_IS_CRITICAL ; 
 int CLK_SET_RATE_GATE ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_core*) ; 

__attribute__((used)) static void FUNC7(struct clk_core *core)
{
	FUNC3(&prepare_lock);

	if (!core)
		return;

	if (FUNC0(core->prepare_count == 0,
	    "%s already unprepared\n", core->name))
		return;

	if (FUNC0(core->prepare_count == 1 && core->flags & CLK_IS_CRITICAL,
	    "Unpreparing critical %s\n", core->name))
		return;

	if (core->flags & CLK_SET_RATE_GATE)
		FUNC1(core);

	if (--core->prepare_count > 0)
		return;

	FUNC0(core->enable_count > 0, "Unpreparing enabled %s\n", core->name);

	FUNC5(core);

	if (core->ops->unprepare)
		core->ops->unprepare(core->hw);

	FUNC2(core);

	FUNC6(core);
	FUNC7(core->parent);
}