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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int clk_num; struct clk** clks; } ;
struct hisi_clock_data {TYPE_1__ clk_data; int /*<<< orphan*/  base; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hisi_clock_data* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct clk** FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 

struct hisi_clock_data *FUNC5(struct platform_device *pdev,
						int nr_clks)
{
	struct hisi_clock_data *clk_data;
	struct resource *res;
	struct clk **clk_table;

	clk_data = FUNC1(&pdev->dev, sizeof(*clk_data), GFP_KERNEL);
	if (!clk_data)
		return NULL;

	res = FUNC3(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return NULL;
	clk_data->base = FUNC0(&pdev->dev,
				res->start, FUNC4(res));
	if (!clk_data->base)
		return NULL;

	clk_table = FUNC2(&pdev->dev, nr_clks,
				       sizeof(*clk_table),
				       GFP_KERNEL);
	if (!clk_table)
		return NULL;

	clk_data->clk_data.clks = clk_table;
	clk_data->clk_data.clk_num = nr_clks;

	return clk_data;
}