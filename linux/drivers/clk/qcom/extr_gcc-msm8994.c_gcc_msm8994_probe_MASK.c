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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gcc_msm8994_desc ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 TYPE_1__ xo ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct clk *clk;

	clk = FUNC2(dev, &xo.hw);
	if (FUNC0(clk))
		return FUNC1(clk);

	return FUNC3(pdev, &gcc_msm8994_desc);
}