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
struct hisi_clock_data {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hi3670_crg_fixed_factor_clks ; 
 int /*<<< orphan*/  hi3670_crgctrl_divider_clks ; 
 int /*<<< orphan*/  hi3670_crgctrl_gate_clks ; 
 int /*<<< orphan*/  hi3670_crgctrl_gate_sep_clks ; 
 int /*<<< orphan*/  hi3670_crgctrl_mux_clks ; 
 int /*<<< orphan*/  hi3670_fixed_rate_clks ; 
 struct hisi_clock_data* FUNC1 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct hisi_clock_data*) ; 

__attribute__((used)) static void FUNC8(struct device_node *np)
{
	struct hisi_clock_data *clk_data;

	int nr = FUNC0(hi3670_fixed_rate_clks) +
		 FUNC0(hi3670_crgctrl_gate_sep_clks) +
		 FUNC0(hi3670_crgctrl_gate_clks) +
		 FUNC0(hi3670_crgctrl_mux_clks) +
		 FUNC0(hi3670_crg_fixed_factor_clks) +
		 FUNC0(hi3670_crgctrl_divider_clks);

	clk_data = FUNC1(np, nr);
	if (!clk_data)
		return;

	FUNC4(hi3670_fixed_rate_clks,
				     FUNC0(hi3670_fixed_rate_clks),
				     clk_data);
	FUNC6(hi3670_crgctrl_gate_sep_clks,
				   FUNC0(hi3670_crgctrl_gate_sep_clks),
				   clk_data);
	FUNC5(hi3670_crgctrl_gate_clks,
			       FUNC0(hi3670_crgctrl_gate_clks),
			       clk_data);
	FUNC7(hi3670_crgctrl_mux_clks,
			      FUNC0(hi3670_crgctrl_mux_clks),
			      clk_data);
	FUNC3(hi3670_crg_fixed_factor_clks,
				       FUNC0(hi3670_crg_fixed_factor_clks),
				       clk_data);
	FUNC2(hi3670_crgctrl_divider_clks,
				  FUNC0(hi3670_crgctrl_divider_clks),
				  clk_data);
}