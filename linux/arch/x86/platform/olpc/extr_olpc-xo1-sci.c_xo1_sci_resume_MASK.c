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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_SCI_SRC_ALL ; 
 int /*<<< orphan*/  GPIO_EVENTS_ENABLE ; 
 int /*<<< orphan*/  OLPC_GPIO_LID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	/*
	 * We don't know what may have happened while we were asleep.
	 * Reestablish our lid setup so we're sure to catch all transitions.
	 */
	FUNC3();
	FUNC5();
	FUNC2(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);

	/* Enable all EC events */
	FUNC4(EC_SCI_SRC_ALL);

	/* Power/battery status might have changed too */
	FUNC1();
	FUNC0();
	return 0;
}