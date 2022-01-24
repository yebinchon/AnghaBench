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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 int async_error ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (scalar_t__,struct device*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct device *dev, pm_message_t state, bool async)
{
	pm_callback_t callback;
	const char *info;
	int error = 0;

	FUNC0(dev);
	FUNC1(0);

	FUNC2(dev, false);

	FUNC9(dev, async);

	if (async_error)
		goto Complete;

	if (FUNC11()) {
		async_error = -EBUSY;
		goto Complete;
	}

	if (dev->power.syscore || dev->power.direct_complete)
		goto Complete;

	callback = FUNC7(dev, state, &info);
	if (callback)
		goto Run;

	if (FUNC4(dev) &&
	    !FUNC8(dev, state, NULL))
		goto Skip;

	if (dev->driver && dev->driver->pm) {
		info = "late driver ";
		callback = FUNC10(dev->driver->pm, state);
	}

Run:
	error = FUNC6(callback, dev, state, info);
	if (error) {
		async_error = error;
		goto Complete;
	}
	FUNC5(dev);

Skip:
	dev->power.is_late_suspended = true;

Complete:
	FUNC1(error);
	FUNC3(&dev->power.completion);
	return error;
}