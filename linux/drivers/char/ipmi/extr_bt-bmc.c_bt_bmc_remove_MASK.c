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
struct bt_bmc {int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  irq; int /*<<< orphan*/  miscdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bt_bmc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct bt_bmc *bt_bmc = FUNC1(&pdev->dev);

	FUNC2(&bt_bmc->miscdev);
	if (!bt_bmc->irq)
		FUNC0(&bt_bmc->poll_timer);
	return 0;
}