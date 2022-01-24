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
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct TYPE_3__ {int idle_notification; int disable_depth; int runtime_auto; int request_pending; int deferred_resume; int /*<<< orphan*/  wait_queue; TYPE_2__ suspend_timer; scalar_t__ timer_expires; int /*<<< orphan*/  work; int /*<<< orphan*/  request; int /*<<< orphan*/  child_count; scalar_t__ runtime_error; int /*<<< orphan*/  usage_count; int /*<<< orphan*/  runtime_status; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPM_REQ_NONE ; 
 int /*<<< orphan*/  RPM_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm_runtime_work ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  pm_suspend_timer_fn ; 

void FUNC5(struct device *dev)
{
	dev->power.runtime_status = RPM_SUSPENDED;
	dev->power.idle_notification = false;

	dev->power.disable_depth = 1;
	FUNC1(&dev->power.usage_count, 0);

	dev->power.runtime_error = 0;

	FUNC1(&dev->power.child_count, 0);
	FUNC4(dev, false);
	dev->power.runtime_auto = true;

	dev->power.request_pending = false;
	dev->power.request = RPM_REQ_NONE;
	dev->power.deferred_resume = false;
	FUNC0(&dev->power.work, pm_runtime_work);

	dev->power.timer_expires = 0;
	FUNC2(&dev->power.suspend_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	dev->power.suspend_timer.function = pm_suspend_timer_fn;

	FUNC3(&dev->power.wait_queue);
}