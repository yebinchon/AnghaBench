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
struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct clk_gate {scalar_t__ bit_idx; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int num_gates; struct clk** gates; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 TYPE_1__* ctrl ; 
 struct clk_gate* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk *FUNC3(
	struct of_phandle_args *clkspec, void *data)
{
	int n;

	if (clkspec->args_count < 1)
		return FUNC0(-EINVAL);

	for (n = 0; n < ctrl->num_gates; n++) {
		struct clk_gate *gate =
			FUNC2(FUNC1(ctrl->gates[n]));
		if (clkspec->args[0] == gate->bit_idx)
			return ctrl->gates[n];
	}
	return FUNC0(-ENODEV);
}