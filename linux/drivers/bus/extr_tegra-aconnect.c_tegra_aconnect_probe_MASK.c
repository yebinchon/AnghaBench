#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tegra_aconnect {void* apb2ape_clk; void* ape_clk; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct tegra_aconnect*) ; 
 void* FUNC5 (TYPE_1__*,char*) ; 
 struct tegra_aconnect* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct tegra_aconnect *aconnect;

	if (!pdev->dev.of_node)
		return -EINVAL;

	aconnect = FUNC6(&pdev->dev, sizeof(struct tegra_aconnect),
				GFP_KERNEL);
	if (!aconnect)
		return -ENOMEM;

	aconnect->ape_clk = FUNC5(&pdev->dev, "ape");
	if (FUNC0(aconnect->ape_clk)) {
		FUNC2(&pdev->dev, "Can't retrieve ape clock\n");
		return FUNC1(aconnect->ape_clk);
	}

	aconnect->apb2ape_clk = FUNC5(&pdev->dev, "apb2ape");
	if (FUNC0(aconnect->apb2ape_clk)) {
		FUNC2(&pdev->dev, "Can't retrieve apb2ape clock\n");
		return FUNC1(aconnect->apb2ape_clk);
	}

	FUNC4(&pdev->dev, aconnect);
	FUNC8(&pdev->dev);

	FUNC7(pdev->dev.of_node, NULL, NULL, &pdev->dev);

	FUNC3(&pdev->dev, "Tegra ACONNECT bus registered\n");

	return 0;
}