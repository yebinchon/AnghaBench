#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct module_kobject {int /*<<< orphan*/ * drivers_dir; } ;
struct device_driver {TYPE_1__* p; TYPE_2__* owner; } ;
struct TYPE_4__ {struct module_kobject mkobj; } ;
struct TYPE_3__ {struct module_kobject* mkobj; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(struct device_driver *drv)
{
	struct module_kobject *mk = NULL;
	char *driver_name;

	if (!drv)
		return;

	FUNC2(&drv->p->kobj, "module");

	if (drv->owner)
		mk = &drv->owner->mkobj;
	else if (drv->p->mkobj)
		mk = drv->p->mkobj;
	if (mk && mk->drivers_dir) {
		driver_name = FUNC1(drv);
		if (driver_name) {
			FUNC2(mk->drivers_dir, driver_name);
			FUNC0(driver_name);
		}
	}
}