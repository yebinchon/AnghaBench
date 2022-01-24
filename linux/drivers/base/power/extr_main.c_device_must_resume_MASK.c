#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  may_skip_resume; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_10__ {scalar_t__ event; } ;
typedef  TYPE_2__ pm_message_t ;

/* Variables and functions */
 scalar_t__ PM_EVENT_RESUME ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 TYPE_2__ FUNC6 (TYPE_2__) ; 

__attribute__((used)) static bool FUNC7(struct device *dev, pm_message_t state,
			       bool no_subsys_suspend_noirq)
{
	pm_message_t resume_msg = FUNC6(state);

	/*
	 * If all of the device driver's "noirq", "late" and "early" callbacks
	 * are invoked directly by the core, the decision to allow the device to
	 * stay in suspend can be based on its current runtime PM status and its
	 * wakeup settings.
	 */
	if (no_subsys_suspend_noirq &&
	    !FUNC4(dev, state, NULL) &&
	    !FUNC2(dev, resume_msg, NULL) &&
	    !FUNC3(dev, resume_msg, NULL))
		return !FUNC5(dev) &&
			(resume_msg.event != PM_EVENT_RESUME ||
			 (FUNC0(dev) && !FUNC1(dev)));

	/*
	 * The only safe strategy here is to require that if the device may not
	 * be left in suspend, resume callbacks must be invoked for it.
	 */
	return !dev->power.may_skip_resume;
}