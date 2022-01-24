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
struct clk_periph_driver_data {struct clk_hw_onecell_data* hw_data; } ;
struct clk_hw_onecell_data {int num; int /*<<< orphan*/ * hws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_periph_driver_data* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct clk_periph_driver_data *data = FUNC2(pdev);
	struct clk_hw_onecell_data *hw_data = data->hw_data;
	int i;

	FUNC1(pdev->dev.of_node);

	for (i = 0; i < hw_data->num; i++)
		FUNC0(hw_data->hws[i]);

	return 0;
}