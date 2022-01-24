#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int no_pm_callbacks; int /*<<< orphan*/  lock; } ;
struct device {TYPE_6__ power; TYPE_5__* driver; TYPE_4__* pm_domain; TYPE_3__* type; TYPE_2__* class; TYPE_1__* bus; } ;
struct TYPE_11__ {int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; int /*<<< orphan*/ * pm; } ;
struct TYPE_10__ {int /*<<< orphan*/  ops; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_7__ {int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; int /*<<< orphan*/ * pm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct device *dev)
{
	FUNC1(&dev->power.lock);
	dev->power.no_pm_callbacks =
		(!dev->bus || (FUNC0(dev->bus->pm) &&
		 !dev->bus->suspend && !dev->bus->resume)) &&
		(!dev->class || FUNC0(dev->class->pm)) &&
		(!dev->type || FUNC0(dev->type->pm)) &&
		(!dev->pm_domain || FUNC0(&dev->pm_domain->ops)) &&
		(!dev->driver || (FUNC0(dev->driver->pm) &&
		 !dev->driver->suspend && !dev->driver->resume));
	FUNC2(&dev->power.lock);
}