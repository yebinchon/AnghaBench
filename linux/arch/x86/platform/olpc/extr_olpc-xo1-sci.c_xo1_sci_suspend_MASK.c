#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS5536_PM_PWRBTN ; 
 int /*<<< orphan*/  EC_SCI_SRC_EBOOK ; 
 int /*<<< orphan*/  GPIO_EVENTS_ENABLE ; 
 int /*<<< orphan*/  GPIO_NEGATIVE_EDGE_STS ; 
 int /*<<< orphan*/  GPIO_POSITIVE_EDGE_STS ; 
 scalar_t__ LID_WAKE_CLOSE ; 
 scalar_t__ LID_WAKE_OPEN ; 
 int /*<<< orphan*/  OLPC_GPIO_LID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* ebook_switch_idev ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ lid_open ; 
 TYPE_2__* lid_switch_idev ; 
 scalar_t__ lid_wake_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* power_button_idev ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev, pm_message_t state)
{
	if (FUNC2(&power_button_idev->dev))
		FUNC7(CS5536_PM_PWRBTN);
	else
		FUNC6(CS5536_PM_PWRBTN);

	if (FUNC2(&ebook_switch_idev->dev))
		FUNC5(EC_SCI_SRC_EBOOK);
	else
		FUNC4(EC_SCI_SRC_EBOOK);

	if (!FUNC2(&lid_switch_idev->dev)) {
		FUNC0(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);
	} else if ((lid_open && lid_wake_mode == LID_WAKE_OPEN) ||
		   (!lid_open && lid_wake_mode == LID_WAKE_CLOSE)) {
		FUNC3();

		/* we may have just caused an event */
		FUNC1(OLPC_GPIO_LID, GPIO_NEGATIVE_EDGE_STS);
		FUNC1(OLPC_GPIO_LID, GPIO_POSITIVE_EDGE_STS);

		FUNC1(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);
	}

	return 0;
}