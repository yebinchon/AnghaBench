#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int memalloc_noio; int /*<<< orphan*/  lock; } ;
struct device {struct device* parent; TYPE_1__ power; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int /*<<< orphan*/  dev_memalloc_noio ; 
 scalar_t__ FUNC0 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct device *dev, bool enable)
{
	static DEFINE_MUTEX(dev_hotplug_mutex);

	FUNC1(&dev_hotplug_mutex);
	for (;;) {
		bool enabled;

		/* hold power lock since bitfield is not SMP-safe. */
		FUNC3(&dev->power.lock);
		enabled = dev->power.memalloc_noio;
		dev->power.memalloc_noio = enable;
		FUNC4(&dev->power.lock);

		/*
		 * not need to enable ancestors any more if the device
		 * has been enabled.
		 */
		if (enabled && enable)
			break;

		dev = dev->parent;

		/*
		 * clear flag of the parent device only if all the
		 * children don't set the flag because ancestor's
		 * flag was set by any one of the descendants.
		 */
		if (!dev || (!enable &&
			     FUNC0(dev, NULL,
						   dev_memalloc_noio)))
			break;
	}
	FUNC2(&dev_hotplug_mutex);
}