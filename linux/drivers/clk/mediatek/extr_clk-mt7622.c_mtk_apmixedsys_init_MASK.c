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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CLK_APMIXED_ARMPLL ; 
 size_t CLK_APMIXED_MAIN_CORE_EN ; 
 int /*<<< orphan*/  CLK_APMIXED_NR_CLK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  apmixed_clks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_onecell_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 int /*<<< orphan*/  plls ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct clk_onecell_data *clk_data;
	struct device_node *node = pdev->dev.of_node;

	clk_data = FUNC2(CLK_APMIXED_NR_CLK);
	if (!clk_data)
		return -ENOMEM;

	FUNC4(node, plls, FUNC0(plls),
			      clk_data);

	FUNC3(node, apmixed_clks,
			       FUNC0(apmixed_clks), clk_data);

	FUNC1(clk_data->clks[CLK_APMIXED_ARMPLL]);
	FUNC1(clk_data->clks[CLK_APMIXED_MAIN_CORE_EN]);

	return FUNC5(node, of_clk_src_onecell_get, clk_data);
}