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
struct TYPE_4__ {int is_late_suspended; int /*<<< orphan*/  completion; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_2__ power; TYPE_1__* driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
typedef  scalar_t__ pm_callback_t ;
struct TYPE_3__ {scalar_t__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__,struct device*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, pm_message_t state, bool async)
{
	pm_callback_t callback;
	const char *info;
	int error = 0;

	FUNC0(dev);
	FUNC1(0);

	if (dev->power.syscore || dev->power.direct_complete)
		goto Out;

	if (!dev->power.is_late_suspended)
		goto Out;

	FUNC5(dev, async);

	callback = FUNC4(dev, state, &info);

	if (!callback && dev->driver && dev->driver->pm) {
		info = "early driver ";
		callback = FUNC6(dev->driver->pm, state);
	}

	error = FUNC3(callback, dev, state, info);
	dev->power.is_late_suspended = false;

 Out:
	FUNC1(error);

	FUNC7(dev);
	FUNC2(&dev->power.completion);
	return error;
}