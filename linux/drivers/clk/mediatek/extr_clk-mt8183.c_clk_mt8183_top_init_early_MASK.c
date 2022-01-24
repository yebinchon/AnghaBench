#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_TOP_NR_CLK ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 TYPE_1__* top_clk_data ; 
 int /*<<< orphan*/  top_early_divs ; 

__attribute__((used)) static void FUNC5(struct device_node *node)
{
	int i;

	top_clk_data = FUNC2(CLK_TOP_NR_CLK);

	for (i = 0; i < CLK_TOP_NR_CLK; i++)
		top_clk_data->clks[i] = FUNC1(-EPROBE_DEFER);

	FUNC3(top_early_divs, FUNC0(top_early_divs),
			top_clk_data);

	FUNC4(node, of_clk_src_onecell_get, top_clk_data);
}