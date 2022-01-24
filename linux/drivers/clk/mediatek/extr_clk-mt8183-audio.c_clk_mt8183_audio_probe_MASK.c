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
 int /*<<< orphan*/  CLK_AUDIO_NR_CLK ; 
 int /*<<< orphan*/  audio_clks ; 
 int FUNC1 (TYPE_1__*) ; 
 struct clk_onecell_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct clk_onecell_data *clk_data;
	int r;
	struct device_node *node = pdev->dev.of_node;

	clk_data = FUNC2(CLK_AUDIO_NR_CLK);

	FUNC3(node, audio_clks, FUNC0(audio_clks),
			clk_data);

	r = FUNC4(node, of_clk_src_onecell_get, clk_data);
	if (r)
		return r;

	r = FUNC1(&pdev->dev);
	if (r)
		FUNC5(node);

	return r;
}