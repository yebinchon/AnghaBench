#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * init; } ;
struct twl6040_pdmclk {TYPE_2__ pdmclk_hw; struct twl6040* twl6040; TYPE_1__* dev; } ;
struct twl6040 {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct twl6040* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 struct twl6040_pdmclk* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct twl6040_pdmclk*) ; 
 int /*<<< orphan*/  twl6040_pdmclk_init ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct twl6040 *twl6040 = FUNC0(pdev->dev.parent);
	struct twl6040_pdmclk *clkdata;
	int ret;

	clkdata = FUNC2(&pdev->dev, sizeof(*clkdata), GFP_KERNEL);
	if (!clkdata)
		return -ENOMEM;

	clkdata->dev = &pdev->dev;
	clkdata->twl6040 = twl6040;

	clkdata->pdmclk_hw.init = &twl6040_pdmclk_init;
	ret = FUNC1(&pdev->dev, &clkdata->pdmclk_hw);
	if (ret)
		return ret;

	FUNC4(pdev, clkdata);

	return FUNC3(&pdev->dev, of_clk_hw_simple_get,
					   &clkdata->pdmclk_hw);
}