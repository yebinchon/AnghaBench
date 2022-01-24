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
struct TYPE_12__ {int is_prepared; int is_suspended; int /*<<< orphan*/  completion; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_6__ power; TYPE_5__* driver; TYPE_4__* bus; TYPE_3__* class; TYPE_2__* type; TYPE_1__* pm_domain; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
typedef  int /*<<< orphan*/ * pm_callback_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_10__ {int /*<<< orphan*/ * resume; int /*<<< orphan*/ * pm; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_7__ {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  wd ; 

__attribute__((used)) static int FUNC12(struct device *dev, pm_message_t state, bool async)
{
	pm_callback_t callback = NULL;
	const char *info = NULL;
	int error = 0;
	FUNC0(wd);

	FUNC1(dev);
	FUNC2(0);

	if (dev->power.syscore)
		goto Complete;

	if (dev->power.direct_complete) {
		/* Match the pm_runtime_disable() in __device_suspend(). */
		FUNC11(dev);
		goto Complete;
	}

	FUNC7(dev, async);
	FUNC9(&wd, dev);
	FUNC4(dev);

	/*
	 * This is a fib.  But we'll allow new children to be added below
	 * a resumed device, even if the device hasn't been completed yet.
	 */
	dev->power.is_prepared = false;

	if (!dev->power.is_suspended)
		goto Unlock;

	if (dev->pm_domain) {
		info = "power domain ";
		callback = FUNC10(&dev->pm_domain->ops, state);
		goto Driver;
	}

	if (dev->type && dev->type->pm) {
		info = "type ";
		callback = FUNC10(dev->type->pm, state);
		goto Driver;
	}

	if (dev->class && dev->class->pm) {
		info = "class ";
		callback = FUNC10(dev->class->pm, state);
		goto Driver;
	}

	if (dev->bus) {
		if (dev->bus->pm) {
			info = "bus ";
			callback = FUNC10(dev->bus->pm, state);
		} else if (dev->bus->resume) {
			info = "legacy bus ";
			callback = dev->bus->resume;
			goto End;
		}
	}

 Driver:
	if (!callback && dev->driver && dev->driver->pm) {
		info = "driver ";
		callback = FUNC10(dev->driver->pm, state);
	}

 End:
	error = FUNC6(callback, dev, state, info);
	dev->power.is_suspended = false;

 Unlock:
	FUNC5(dev);
	FUNC8(&wd);

 Complete:
	FUNC3(&dev->power.completion);

	FUNC2(error);

	return error;
}