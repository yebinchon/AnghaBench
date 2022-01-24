#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * clks; } ;
struct TYPE_6__ {TYPE_1__ clk_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* clk_crgctrl_data ; 
 int /*<<< orphan*/  hi3660_crg_fixed_factor_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_divider_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_gate_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_gate_sep_clks ; 
 int /*<<< orphan*/  hi3660_crgctrl_mux_clks ; 
 int /*<<< orphan*/  hi3660_fixed_rate_clks ; 
 TYPE_2__* FUNC2 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct device_node *np)
{
	int nr = FUNC0(hi3660_fixed_rate_clks) +
		 FUNC0(hi3660_crgctrl_gate_sep_clks) +
		 FUNC0(hi3660_crgctrl_gate_clks) +
		 FUNC0(hi3660_crgctrl_mux_clks) +
		 FUNC0(hi3660_crg_fixed_factor_clks) +
		 FUNC0(hi3660_crgctrl_divider_clks);
	int i;

	clk_crgctrl_data = FUNC2(np, nr);
	if (!clk_crgctrl_data)
		return;

	for (i = 0; i < nr; i++)
		clk_crgctrl_data->clk_data.clks[i] = FUNC1(-EPROBE_DEFER);

	FUNC3(hi3660_fixed_rate_clks,
				     FUNC0(hi3660_fixed_rate_clks),
				     clk_crgctrl_data);
}