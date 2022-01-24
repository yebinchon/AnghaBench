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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hisi_clock_data {int /*<<< orphan*/  clk_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct hisi_clock_data* FUNC1 (int) ; 
 int /*<<< orphan*/  HI3516CV300_CRG_NR_CLKS ; 
 int /*<<< orphan*/  hi3516cv300_fixed_rate_clks ; 
 int /*<<< orphan*/  hi3516cv300_gate_clks ; 
 int /*<<< orphan*/  hi3516cv300_mux_clks ; 
 struct hisi_clock_data* FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_clock_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_clock_data*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_clock_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_clock_data*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

__attribute__((used)) static struct hisi_clock_data *FUNC10(
		struct platform_device *pdev)
{
	struct hisi_clock_data *clk_data;
	int ret;

	clk_data = FUNC2(pdev, HI3516CV300_CRG_NR_CLKS);
	if (!clk_data)
		return FUNC1(-ENOMEM);

	ret = FUNC3(hi3516cv300_fixed_rate_clks,
			FUNC0(hi3516cv300_fixed_rate_clks), clk_data);
	if (ret)
		return FUNC1(ret);

	ret = FUNC5(hi3516cv300_mux_clks,
			FUNC0(hi3516cv300_mux_clks), clk_data);
	if (ret)
		goto unregister_fixed_rate;

	ret = FUNC4(hi3516cv300_gate_clks,
			FUNC0(hi3516cv300_gate_clks), clk_data);
	if (ret)
		goto unregister_mux;

	ret = FUNC9(pdev->dev.of_node,
			of_clk_src_onecell_get, &clk_data->clk_data);
	if (ret)
		goto unregister_gate;

	return clk_data;

unregister_gate:
	FUNC7(hi3516cv300_gate_clks,
				FUNC0(hi3516cv300_gate_clks), clk_data);
unregister_mux:
	FUNC8(hi3516cv300_mux_clks,
			FUNC0(hi3516cv300_mux_clks), clk_data);
unregister_fixed_rate:
	FUNC6(hi3516cv300_fixed_rate_clks,
			FUNC0(hi3516cv300_fixed_rate_clks), clk_data);
	return FUNC1(ret);
}