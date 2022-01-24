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
struct device {int /*<<< orphan*/  kobj; } ;
struct class_compat {int /*<<< orphan*/ * kobj; } ;

/* Variables and functions */
 char* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

int FUNC3(struct class_compat *cls, struct device *dev,
			     struct device *device_link)
{
	int error;

	error = FUNC1(cls->kobj, &dev->kobj, FUNC0(dev));
	if (error)
		return error;

	/*
	 * Optionally add a "device" link (typically to the parent), as a
	 * class device would have one and we want to provide as much
	 * backwards compatibility as possible.
	 */
	if (device_link) {
		error = FUNC1(&dev->kobj, &device_link->kobj,
					  "device");
		if (error)
			FUNC2(cls->kobj, FUNC0(dev));
	}

	return error;
}