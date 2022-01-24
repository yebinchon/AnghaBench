#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_AUDIO_NR_CLK ; 
 int /*<<< orphan*/  audio_clks ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct clk_onecell_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct clk_onecell_data *clk_data;
	struct device_node *node = pdev->dev.of_node;
	int r;

	clk_data = FUNC3(CLK_AUDIO_NR_CLK);

	FUNC4(node, audio_clks, FUNC0(audio_clks),
			       clk_data);

	r = FUNC5(node, of_clk_src_onecell_get, clk_data);
	if (r) {
		FUNC1(&pdev->dev,
			"could not register clock provider: %s: %d\n",
			pdev->name, r);

		goto err_clk_provider;
	}

	r = FUNC2(&pdev->dev);
	if (r)
		goto err_plat_populate;

	return 0;

err_plat_populate:
	FUNC6(node);
err_clk_provider:
	return r;
}