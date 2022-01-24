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
struct bus_type {TYPE_1__* p; int /*<<< orphan*/  bus_groups; scalar_t__ dev_root; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  subsys; int /*<<< orphan*/ * devices_kset; int /*<<< orphan*/ * drivers_kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  bus_attr_uevent ; 
 int /*<<< orphan*/  FUNC0 (struct bus_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bus_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bus_type*) ; 

void FUNC6(struct bus_type *bus)
{
	FUNC4("bus: '%s': unregistering\n", bus->name);
	if (bus->dev_root)
		FUNC2(bus->dev_root);
	FUNC1(bus, bus->bus_groups);
	FUNC5(bus);
	FUNC3(bus->p->drivers_kset);
	FUNC3(bus->p->devices_kset);
	FUNC0(bus, &bus_attr_uevent);
	FUNC3(&bus->p->subsys);
}