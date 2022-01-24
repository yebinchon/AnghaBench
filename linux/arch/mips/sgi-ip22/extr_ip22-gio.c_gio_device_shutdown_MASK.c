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
struct gio_driver {int /*<<< orphan*/  (* shutdown ) (struct gio_device*) ;} ;
struct gio_device {int dummy; } ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gio_device*) ; 
 struct gio_device* FUNC1 (struct device*) ; 
 struct gio_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct gio_device *gio_dev = FUNC1(dev);
	struct gio_driver *drv = FUNC2(dev->driver);

	if (dev->driver && drv->shutdown)
		drv->shutdown(gio_dev);
}