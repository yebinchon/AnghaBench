#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RESET_CONTROLLER ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_pm_restart ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__ sirfsoc_reset_controller ; 
 int /*<<< orphan*/  sirfsoc_restart ; 
 int /*<<< orphan*/  sirfsoc_rstc_base ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	sirfsoc_rstc_base = FUNC2(np, 0);
	if (!sirfsoc_rstc_base) {
		FUNC1(&pdev->dev, "unable to map rstc cpu registers\n");
		return -ENOMEM;
	}

	sirfsoc_reset_controller.of_node = np;
	arm_pm_restart = sirfsoc_restart;

	if (FUNC0(CONFIG_RESET_CONTROLLER))
		FUNC3(&sirfsoc_reset_controller);

	return 0;
}