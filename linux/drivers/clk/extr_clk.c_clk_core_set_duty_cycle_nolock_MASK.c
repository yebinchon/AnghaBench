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
struct clk_duty {int dummy; } ;
struct clk_core {int /*<<< orphan*/  duty; int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_duty_cycle ) (int /*<<< orphan*/ ,struct clk_duty*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct clk_core*) ; 
 int FUNC1 (struct clk_core*,struct clk_duty*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct clk_duty*,int) ; 
 int /*<<< orphan*/  prepare_lock ; 
 int FUNC4 (int /*<<< orphan*/ ,struct clk_duty*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_core*,struct clk_duty*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_core*,struct clk_duty*) ; 

__attribute__((used)) static int FUNC7(struct clk_core *core,
					  struct clk_duty *duty)
{
	int ret;

	FUNC2(&prepare_lock);

	if (FUNC0(core))
		return -EBUSY;

	FUNC5(core, duty);

	if (!core->ops->set_duty_cycle)
		return FUNC1(core, duty);

	ret = core->ops->set_duty_cycle(core->hw, duty);
	if (!ret)
		FUNC3(&core->duty, duty, sizeof(*duty));

	FUNC6(core, duty);

	return ret;
}