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
struct kobject {int dummy; } ;
struct driver_private {struct device_driver* driver; } ;
struct device_driver {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  drivers_kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 struct driver_private* FUNC2 (struct kobject*) ; 

struct device_driver *FUNC3(const char *name, struct bus_type *bus)
{
	struct kobject *k = FUNC1(bus->p->drivers_kset, name);
	struct driver_private *priv;

	if (k) {
		/* Drop reference added by kset_find_obj() */
		FUNC0(k);
		priv = FUNC2(k);
		return priv->driver;
	}
	return NULL;
}