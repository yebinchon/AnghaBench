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
struct clk_onecell_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_VENC_NR_CLK ; 
 struct clk_onecell_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 int /*<<< orphan*/  venc_clks ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct clk_onecell_data *clk_data;
	struct device_node *node = pdev->dev.of_node;

	clk_data = FUNC1(CLK_VENC_NR_CLK);

	FUNC2(node, venc_clks, FUNC0(venc_clks),
			clk_data);

	return FUNC3(node, of_clk_src_onecell_get, clk_data);
}