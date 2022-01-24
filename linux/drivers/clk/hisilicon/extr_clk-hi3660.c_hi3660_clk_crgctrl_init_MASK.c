#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_8__ {int clk_num; struct clk** clks; } ;
struct TYPE_9__ {TYPE_1__ clk_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 TYPE_2__* clk_crgctrl_data ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  hi3660_crg_fixed_factor_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_divider_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_gate_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_gate_sep_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_mux_clks ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct device_node *np)
{
	struct clk **clks;
	int i;

	if (!clk_crgctrl_data)
		FUNC3(np);

	/* clk_crgctrl_data initialization failed */
	if (!clk_crgctrl_data)
		return;

	FUNC7(hi3660_crgctrl_gate_sep_clks,
				   FUNC0(hi3660_crgctrl_gate_sep_clks),
				   clk_crgctrl_data);
	FUNC6(hi3660_crgctrl_gate_clks,
			       FUNC0(hi3660_crgctrl_gate_clks),
			       clk_crgctrl_data);
	FUNC8(hi3660_crgctrl_mux_clks,
			      FUNC0(hi3660_crgctrl_mux_clks),
			      clk_crgctrl_data);
	FUNC5(hi3660_crg_fixed_factor_clks,
				       FUNC0(hi3660_crg_fixed_factor_clks),
				       clk_crgctrl_data);
	FUNC4(hi3660_crgctrl_divider_clks,
				  FUNC0(hi3660_crgctrl_divider_clks),
				  clk_crgctrl_data);

	clks = clk_crgctrl_data->clk_data.clks;
	for (i = 0; i < clk_crgctrl_data->clk_data.clk_num; i++) {
		if (FUNC1(clks[i]) && FUNC2(clks[i]) != -EPROBE_DEFER)
			FUNC9("Failed to register crgctrl clock[%d] err=%ld\n",
			       i, FUNC2(clks[i]));
	}
}