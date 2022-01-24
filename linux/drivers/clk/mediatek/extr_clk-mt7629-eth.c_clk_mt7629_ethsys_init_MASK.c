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
struct platform_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_ETH_NR_CLK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  eth_clks ; 
 struct clk_onecell_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int,int) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct clk_onecell_data *clk_data;
	struct device_node *node = pdev->dev.of_node;
	int r;

	clk_data = FUNC1(CLK_ETH_NR_CLK);

	FUNC2(node, eth_clks, CLK_ETH_NR_CLK, clk_data);

	r = FUNC4(node, of_clk_src_onecell_get, clk_data);
	if (r)
		FUNC0(&pdev->dev,
			"could not register clock provider: %s: %d\n",
			pdev->name, r);

	FUNC3(node, 1, 0x34);

	return r;
}