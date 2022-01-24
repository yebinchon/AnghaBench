#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t CREG_CLK_1KHZ ; 
 size_t CREG_CLK_32KHZ ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/ * clk_creg ; 
 TYPE_2__* clk_creg_clocks ; 
 int /*<<< orphan*/  clk_creg_data ; 
 int /*<<< orphan*/ * clk_creg_early ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 struct regmap* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct regmap *syscon;

	syscon = FUNC5(np->parent);
	if (FUNC0(syscon)) {
		FUNC3(&pdev->dev, "syscon lookup failed\n");
		return FUNC1(syscon);
	}

	clk_creg[CREG_CLK_32KHZ] = clk_creg_early[CREG_CLK_32KHZ];
	clk_creg[CREG_CLK_1KHZ] =
		FUNC2(NULL, &clk_creg_clocks[CREG_CLK_1KHZ],
				      &clk_creg_clocks[CREG_CLK_32KHZ].name,
				      syscon);

	return FUNC4(np, of_clk_src_onecell_get, &clk_creg_data);
}