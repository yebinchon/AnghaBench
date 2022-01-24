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
struct gio_driver {int (* probe ) (struct gio_device*,struct gio_device_id const*) ;int /*<<< orphan*/  id_table; } ;
struct gio_device_id {int dummy; } ;
struct gio_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gio_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gio_device*) ; 
 struct gio_device_id* FUNC2 (int /*<<< orphan*/ ,struct gio_device*) ; 
 int FUNC3 (struct gio_device*,struct gio_device_id const*) ; 
 struct gio_device* FUNC4 (struct device*) ; 
 struct gio_driver* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int error = -ENODEV;
	struct gio_driver *drv;
	struct gio_device *gio_dev;
	const struct gio_device_id *match;

	drv = FUNC5(dev->driver);
	gio_dev = FUNC4(dev);

	if (!drv->probe)
		return error;

	FUNC0(gio_dev);

	match = FUNC2(drv->id_table, gio_dev);
	if (match)
		error = drv->probe(gio_dev, match);
	if (error)
		FUNC1(gio_dev);

	return error;
}