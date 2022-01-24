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
struct device {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_NOTIFY_DRIVER_NOT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 

int FUNC3(struct device *dev)
{
	int ret;

	ret = FUNC2(dev);
	if (!ret)
		FUNC1(dev);
	else if (dev->bus)
		FUNC0(&dev->bus->p->bus_notifier,
					     BUS_NOTIFY_DRIVER_NOT_BOUND, dev);
	return ret;
}