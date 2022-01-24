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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct clk_hw *clk;

	clk = FUNC2(pdev->dev.of_node);
	if (FUNC0(clk))
		return FUNC1(clk);

	FUNC3(pdev, clk);

	return 0;
}