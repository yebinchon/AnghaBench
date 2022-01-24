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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  turingcc_desc ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;

	FUNC5(&pdev->dev);
	ret = FUNC2(&pdev->dev);
	if (ret)
		goto disable_pm_runtime;

	ret = FUNC1(&pdev->dev, NULL);
	if (ret < 0) {
		FUNC0(&pdev->dev, "failed to acquire iface clock\n");
		goto destroy_pm_clk;
	}

	ret = FUNC6(pdev, &turingcc_desc);
	if (ret < 0)
		goto destroy_pm_clk;

	return 0;

destroy_pm_clk:
	FUNC3(&pdev->dev);

disable_pm_runtime:
	FUNC4(&pdev->dev);

	return ret;
}