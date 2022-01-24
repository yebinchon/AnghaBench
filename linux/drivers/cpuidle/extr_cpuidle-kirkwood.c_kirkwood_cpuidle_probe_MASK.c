#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ddr_operation_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  kirkwood_idle_driver ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct resource *res;

	res = FUNC4(pdev, IORESOURCE_MEM, 0);
	ddr_operation_base = FUNC3(&pdev->dev, res);
	if (FUNC0(ddr_operation_base))
		return FUNC1(ddr_operation_base);

	return FUNC2(&kirkwood_idle_driver, NULL);
}