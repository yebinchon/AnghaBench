#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {scalar_t__* clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_INFRA_NR ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* infra_clk_data ; 
 int /*<<< orphan*/  infra_clks ; 
 int /*<<< orphan*/  infra_fixed_divs ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int r, i;
	struct device_node *node = pdev->dev.of_node;

	if (!infra_clk_data) {
		infra_clk_data = FUNC2(CLK_INFRA_NR);
	} else {
		for (i = 0; i < CLK_INFRA_NR; i++) {
			if (infra_clk_data->clks[i] == FUNC1(-EPROBE_DEFER))
				infra_clk_data->clks[i] = FUNC1(-ENOENT);
		}
	}

	FUNC4(node, infra_clks, FUNC0(infra_clks),
			       infra_clk_data);
	FUNC3(infra_fixed_divs, FUNC0(infra_fixed_divs),
				 infra_clk_data);

	r = FUNC5(node, of_clk_src_onecell_get, infra_clk_data);
	if (r)
		return r;

	return 0;
}