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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_MM_NR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mm_clks ; 
 struct clk_onecell_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct clk_onecell_data *clk_data;
	int r;
	struct device_node *node = pdev->dev.of_node;

	clk_data = FUNC2(CLK_MM_NR);

	FUNC3(node, mm_clks, FUNC0(mm_clks),
			       clk_data);

	r = FUNC4(node, of_clk_src_onecell_get, clk_data);
	if (r)
		FUNC1(&pdev->dev,
			"could not register clock provider: %s: %d\n",
			pdev->name, r);

	return r;
}