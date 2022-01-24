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
struct bcma_bus {int /*<<< orphan*/  drv_cc_b; int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*) ; 

void FUNC4(struct bcma_bus *bus)
{
	int err;

	err = FUNC2(&bus->drv_cc);
	if (err == -EBUSY)
		FUNC1(bus, "Some GPIOs are still in use.\n");
	else if (err)
		FUNC1(bus, "Can not unregister GPIO driver: %i\n", err);

	FUNC0(&bus->drv_cc_b);

	FUNC3(bus);
}