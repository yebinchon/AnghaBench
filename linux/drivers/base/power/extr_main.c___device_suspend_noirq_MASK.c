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
struct TYPE_4__ {int is_noirq_suspended; int must_resume; int /*<<< orphan*/  completion; int /*<<< orphan*/  usage_count; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_2__ power; TYPE_1__* driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
typedef  scalar_t__ pm_callback_t ;
struct TYPE_3__ {scalar_t__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_FLAG_LEAVE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int async_error ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__,struct device*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct device*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct device *dev, pm_message_t state, bool async)
{
	pm_callback_t callback;
	const char *info;
	bool no_subsys_cb = false;
	int error = 0;

	FUNC0(dev);
	FUNC1(0);

	FUNC11(dev, async);

	if (async_error)
		goto Complete;

	if (dev->power.syscore || dev->power.direct_complete)
		goto Complete;

	callback = FUNC9(dev, state, &info);
	if (callback)
		goto Run;

	no_subsys_cb = !FUNC8(dev, state, NULL);

	if (FUNC4(dev) && no_subsys_cb)
		goto Skip;

	if (dev->driver && dev->driver->pm) {
		info = "noirq driver ";
		callback = FUNC12(dev->driver->pm, state);
	}

Run:
	error = FUNC7(callback, dev, state, info);
	if (error) {
		async_error = error;
		goto Complete;
	}

Skip:
	dev->power.is_noirq_suspended = true;

	if (FUNC5(dev, DPM_FLAG_LEAVE_SUSPENDED)) {
		dev->power.must_resume = dev->power.must_resume ||
				FUNC2(&dev->power.usage_count) > 1 ||
				FUNC6(dev, state, no_subsys_cb);
	} else {
		dev->power.must_resume = true;
	}

	if (dev->power.must_resume)
		FUNC10(dev);

Complete:
	FUNC3(&dev->power.completion);
	FUNC1(error);
	return error;
}