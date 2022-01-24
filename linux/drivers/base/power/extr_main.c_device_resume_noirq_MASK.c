#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int is_noirq_suspended; int is_late_suspended; int is_suspended; int /*<<< orphan*/  completion; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_2__ power; TYPE_1__* driver; } ;
struct TYPE_14__ {scalar_t__ event; } ;
typedef  TYPE_3__ pm_message_t ;
typedef  scalar_t__ pm_callback_t ;
struct TYPE_12__ {scalar_t__ pm; } ;

/* Variables and functions */
 scalar_t__ PM_EVENT_THAW ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (scalar_t__,struct device*,TYPE_3__,char const*) ; 
 scalar_t__ FUNC6 (struct device*,TYPE_3__,char const**) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,TYPE_3__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,TYPE_3__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 TYPE_3__ FUNC13 (TYPE_3__) ; 

__attribute__((used)) static int FUNC14(struct device *dev, pm_message_t state, bool async)
{
	pm_callback_t callback;
	const char *info;
	bool skip_resume;
	int error = 0;

	FUNC0(dev);
	FUNC1(0);

	if (dev->power.syscore || dev->power.direct_complete)
		goto Out;

	if (!dev->power.is_noirq_suspended)
		goto Out;

	FUNC9(dev, async);

	skip_resume = FUNC3(dev);

	callback = FUNC6(dev, state, &info);
	if (callback)
		goto Run;

	if (skip_resume)
		goto Skip;

	if (FUNC4(dev)) {
		pm_message_t suspend_msg = FUNC13(state);

		/*
		 * If "freeze" callbacks have been skipped during a transition
		 * related to hibernation, the subsequent "thaw" callbacks must
		 * be skipped too or bad things may happen.  Otherwise, resume
		 * callbacks are going to be run for the device, so its runtime
		 * PM status must be changed to reflect the new state after the
		 * transition under way.
		 */
		if (!FUNC7(dev, suspend_msg, NULL) &&
		    !FUNC8(dev, suspend_msg, NULL)) {
			if (state.event == PM_EVENT_THAW) {
				skip_resume = true;
				goto Skip;
			} else {
				FUNC11(dev);
			}
		}
	}

	if (dev->driver && dev->driver->pm) {
		info = "noirq driver ";
		callback = FUNC10(dev->driver->pm, state);
	}

Run:
	error = FUNC5(callback, dev, state, info);

Skip:
	dev->power.is_noirq_suspended = false;

	if (skip_resume) {
		/* Make the next phases of resume skip the device. */
		dev->power.is_late_suspended = false;
		dev->power.is_suspended = false;
		/*
		 * The device is going to be left in suspend, but it might not
		 * have been in runtime suspend before the system suspended, so
		 * its runtime PM status needs to be updated to avoid confusing
		 * the runtime PM framework when runtime PM is enabled for the
		 * device again.
		 */
		FUNC12(dev);
	}

Out:
	FUNC2(&dev->power.completion);
	FUNC1(error);
	return error;
}