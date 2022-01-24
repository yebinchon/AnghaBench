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
struct clk_core {int flags; TYPE_1__* parent; int /*<<< orphan*/  duty; } ;
struct TYPE_2__ {int /*<<< orphan*/  duty; } ;

/* Variables and functions */
 int CLK_DUTY_CYCLE_PARENT ; 
 int /*<<< orphan*/  FUNC0 (struct clk_core*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct clk_core *core)
{
	int ret = 0;

	if (core->parent &&
	    core->flags & CLK_DUTY_CYCLE_PARENT) {
		ret = FUNC1(core->parent);
		FUNC2(&core->duty, &core->parent->duty, sizeof(core->duty));
	} else {
		FUNC0(core);
	}

	return ret;
}