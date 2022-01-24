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
struct vio_driver {struct vio_device_id* id_table; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct vio_dev* FUNC0 (struct device*) ; 
 struct vio_driver* FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/ * FUNC2 (struct vio_device_id const*,struct vio_dev const*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	const struct vio_dev *vio_dev = FUNC0(dev);
	struct vio_driver *vio_drv = FUNC1(drv);
	const struct vio_device_id *ids = vio_drv->id_table;

	return (ids != NULL) && (FUNC2(ids, vio_dev) != NULL);
}