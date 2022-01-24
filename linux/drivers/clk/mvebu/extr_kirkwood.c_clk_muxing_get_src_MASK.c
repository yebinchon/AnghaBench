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
struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct clk_muxing_ctrl {int num_muxes; struct clk** muxes; } ;
struct clk_mux {scalar_t__ shift; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk_mux* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk *FUNC3(
	struct of_phandle_args *clkspec, void *data)
{
	struct clk_muxing_ctrl *ctrl = (struct clk_muxing_ctrl *)data;
	int n;

	if (clkspec->args_count < 1)
		return FUNC0(-EINVAL);

	for (n = 0; n < ctrl->num_muxes; n++) {
		struct clk_mux *mux =
			FUNC2(FUNC1(ctrl->muxes[n]));
		if (clkspec->args[0] == mux->shift)
			return ctrl->muxes[n];
	}
	return FUNC0(-ENODEV);
}