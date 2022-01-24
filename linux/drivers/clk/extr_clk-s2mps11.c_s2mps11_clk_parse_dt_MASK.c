#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sec_pmic_dev {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct clk_init_data {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int S2MPS11_CLKS_NUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct sec_pmic_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct device_node *FUNC5(struct platform_device *pdev,
		struct clk_init_data *clks_init)
{
	struct sec_pmic_dev *iodev = FUNC2(pdev->dev.parent);
	struct device_node *clk_np;
	int i;

	if (!iodev->dev->of_node)
		return FUNC0(-EINVAL);

	clk_np = FUNC3(iodev->dev->of_node, "clocks");
	if (!clk_np) {
		FUNC1(&pdev->dev, "could not find clock sub-node\n");
		return FUNC0(-EINVAL);
	}

	for (i = 0; i < S2MPS11_CLKS_NUM; i++)
		FUNC4(clk_np, "clock-output-names", i,
				&clks_init[i].name);

	return clk_np;
}