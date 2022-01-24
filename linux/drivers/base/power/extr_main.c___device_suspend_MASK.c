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
struct TYPE_12__ {int direct_complete; int wakeup_path; int may_skip_resume; int must_resume; int is_suspended; int /*<<< orphan*/  completion; scalar_t__ syscore; } ;
struct device {TYPE_6__ power; TYPE_5__* driver; TYPE_4__* bus; TYPE_3__* class; TYPE_2__* type; TYPE_1__* pm_domain; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
typedef  int /*<<< orphan*/ * pm_callback_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_10__ {scalar_t__ suspend; int /*<<< orphan*/ * pm; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_7__ {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int async_error ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct device*) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 scalar_t__ FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  wd ; 

__attribute__((used)) static int FUNC22(struct device *dev, pm_message_t state, bool async)
{
	pm_callback_t callback = NULL;
	const char *info = NULL;
	int error = 0;
	FUNC0(wd);

	FUNC1(dev);
	FUNC2(0);

	FUNC10(dev, async);

	if (async_error) {
		dev->power.direct_complete = false;
		goto Complete;
	}

	/*
	 * If a device configured to wake up the system from sleep states
	 * has been suspended at run time and there's a resume request pending
	 * for it, this is equivalent to the device signaling wakeup, so the
	 * system suspend operation should be aborted.
	 */
	if (FUNC16(dev) && FUNC5(dev))
		FUNC20(dev, 0);

	if (FUNC21()) {
		dev->power.direct_complete = false;
		async_error = -EBUSY;
		goto Complete;
	}

	if (dev->power.syscore)
		goto Complete;

	/* Avoid direct_complete to let wakeup_path propagate. */
	if (FUNC5(dev) || dev->power.wakeup_path)
		dev->power.direct_complete = false;

	if (dev->power.direct_complete) {
		if (FUNC19(dev)) {
			FUNC17(dev);
			if (FUNC19(dev)) {
				FUNC14(dev, state, "direct-complete ");
				goto Complete;
			}

			FUNC18(dev);
		}
		dev->power.direct_complete = false;
	}

	dev->power.may_skip_resume = false;
	dev->power.must_resume = false;

	FUNC12(&wd, dev);
	FUNC4(dev);

	if (dev->pm_domain) {
		info = "power domain ";
		callback = FUNC15(&dev->pm_domain->ops, state);
		goto Run;
	}

	if (dev->type && dev->type->pm) {
		info = "type ";
		callback = FUNC15(dev->type->pm, state);
		goto Run;
	}

	if (dev->class && dev->class->pm) {
		info = "class ";
		callback = FUNC15(dev->class->pm, state);
		goto Run;
	}

	if (dev->bus) {
		if (dev->bus->pm) {
			info = "bus ";
			callback = FUNC15(dev->bus->pm, state);
		} else if (dev->bus->suspend) {
			FUNC14(dev, state, "legacy bus ");
			error = FUNC13(dev, state, dev->bus->suspend,
						"legacy bus ");
			goto End;
		}
	}

 Run:
	if (!callback && dev->driver && dev->driver->pm) {
		info = "driver ";
		callback = FUNC15(dev->driver->pm, state);
	}

	error = FUNC9(callback, dev, state, info);

 End:
	if (!error) {
		dev->power.is_suspended = true;
		if (FUNC5(dev))
			dev->power.wakeup_path = true;

		FUNC8(dev);
		FUNC7(dev);
	}

	FUNC6(dev);
	FUNC11(&wd);

 Complete:
	if (error)
		async_error = error;

	FUNC3(&dev->power.completion);
	FUNC2(error);
	return error;
}