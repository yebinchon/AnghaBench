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
struct hi3519_crg_data {int /*<<< orphan*/  clk_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hi3519_fixed_rate_clks ; 
 int /*<<< orphan*/  hi3519_gate_clks ; 
 int /*<<< orphan*/  hi3519_mux_clks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hi3519_crg_data* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev)
{
	struct hi3519_crg_data *crg = FUNC5(pdev);

	FUNC4(pdev->dev.of_node);

	FUNC2(hi3519_gate_clks,
				FUNC0(hi3519_mux_clks),
				crg->clk_data);
	FUNC3(hi3519_mux_clks,
				FUNC0(hi3519_mux_clks),
				crg->clk_data);
	FUNC1(hi3519_fixed_rate_clks,
				FUNC0(hi3519_fixed_rate_clks),
				crg->clk_data);
}