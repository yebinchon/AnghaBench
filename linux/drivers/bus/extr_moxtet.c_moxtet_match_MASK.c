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
struct moxtet_driver {int* id_table; } ;
struct moxtet_device {int const id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
typedef  enum turris_mox_module_id { ____Placeholder_turris_mox_module_id } turris_mox_module_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,struct device_driver*) ; 
 struct moxtet_device* FUNC1 (struct device*) ; 
 struct moxtet_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct moxtet_device *mdev = FUNC1(dev);
	struct moxtet_driver *tdrv = FUNC2(drv);
	const enum turris_mox_module_id *t;

	if (FUNC0(dev, drv))
		return 1;

	if (!tdrv->id_table)
		return 0;

	for (t = tdrv->id_table; *t; ++t)
		if (*t == mdev->id)
			return 1;

	return 0;
}