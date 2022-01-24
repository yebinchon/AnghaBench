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
struct gio_driver {int /*<<< orphan*/  id_table; } ;
struct gio_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct gio_device*) ; 
 struct gio_device* FUNC1 (struct device*) ; 
 struct gio_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct gio_device *gio_dev = FUNC1(dev);
	struct gio_driver *gio_drv = FUNC2(drv);

	return FUNC0(gio_drv->id_table, gio_dev) != NULL;
}