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
struct TYPE_2__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/  of_match_table; } ;
struct platform_driver {TYPE_1__ driver; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ibmebus_bus_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct platform_driver *drv)
{
	/* If the driver uses devices that ibmebus doesn't know, add them */
	FUNC1(drv->driver.of_match_table);

	drv->driver.bus = &ibmebus_bus_type;
	return FUNC0(&drv->driver);
}