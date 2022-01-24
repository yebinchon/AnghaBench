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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ktype; int /*<<< orphan*/  kset; } ;
struct TYPE_5__ {TYPE_3__ kobj; } ;
struct subsys_private {int drivers_autoprobe; TYPE_1__ subsys; TYPE_1__* devices_kset; TYPE_1__* drivers_kset; int /*<<< orphan*/  klist_drivers; int /*<<< orphan*/  klist_devices; int /*<<< orphan*/  mutex; int /*<<< orphan*/  interfaces; int /*<<< orphan*/  bus_notifier; struct bus_type* bus; } ;
struct lock_class_key {int dummy; } ;
struct bus_type {struct subsys_private* p; int /*<<< orphan*/  name; int /*<<< orphan*/  bus_groups; struct lock_class_key lock_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct lock_class_key*) ; 
 int FUNC3 (struct bus_type*) ; 
 int FUNC4 (struct bus_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bus_attr_uevent ; 
 int FUNC5 (struct bus_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus_kset ; 
 int /*<<< orphan*/  bus_ktype ; 
 int /*<<< orphan*/  FUNC6 (struct bus_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct subsys_private*) ; 
 int /*<<< orphan*/ * klist_devices_get ; 
 int /*<<< orphan*/ * klist_devices_put ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 struct subsys_private* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bus_type*) ; 

int FUNC16(struct bus_type *bus)
{
	int retval;
	struct subsys_private *priv;
	struct lock_class_key *key = &bus->lock_key;

	priv = FUNC13(sizeof(struct subsys_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->bus = bus;
	bus->p = priv;

	FUNC0(&priv->bus_notifier);

	retval = FUNC9(&priv->subsys.kobj, "%s", bus->name);
	if (retval)
		goto out;

	priv->subsys.kobj.kset = bus_kset;
	priv->subsys.kobj.ktype = &bus_ktype;
	priv->drivers_autoprobe = 1;

	retval = FUNC11(&priv->subsys);
	if (retval)
		goto out;

	retval = FUNC5(bus, &bus_attr_uevent);
	if (retval)
		goto bus_uevent_fail;

	priv->devices_kset = FUNC10("devices", NULL,
						 &priv->subsys.kobj);
	if (!priv->devices_kset) {
		retval = -ENOMEM;
		goto bus_devices_fail;
	}

	priv->drivers_kset = FUNC10("drivers", NULL,
						 &priv->subsys.kobj);
	if (!priv->drivers_kset) {
		retval = -ENOMEM;
		goto bus_drivers_fail;
	}

	FUNC1(&priv->interfaces);
	FUNC2(&priv->mutex, "subsys mutex", key);
	FUNC8(&priv->klist_devices, klist_devices_get, klist_devices_put);
	FUNC8(&priv->klist_drivers, NULL, NULL);

	retval = FUNC3(bus);
	if (retval)
		goto bus_probe_files_fail;

	retval = FUNC4(bus, bus->bus_groups);
	if (retval)
		goto bus_groups_fail;

	FUNC14("bus: '%s': registered\n", bus->name);
	return 0;

bus_groups_fail:
	FUNC15(bus);
bus_probe_files_fail:
	FUNC12(bus->p->drivers_kset);
bus_drivers_fail:
	FUNC12(bus->p->devices_kset);
bus_devices_fail:
	FUNC6(bus, &bus_attr_uevent);
bus_uevent_fail:
	FUNC12(&bus->p->subsys);
out:
	FUNC7(bus->p);
	bus->p = NULL;
	return retval;
}