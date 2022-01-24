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
struct cpuidle_state {int flags; scalar_t__ exit_latency; int (* enter ) (struct cpuidle_device*,struct cpuidle_driver*,int) ;scalar_t__ target_residency; scalar_t__ disabled; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {int last_residency; TYPE_1__* states_usage; int /*<<< orphan*/  cpu; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int time; int /*<<< orphan*/  below; scalar_t__ disable; int /*<<< orphan*/  above; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int CPUIDLE_FLAG_TIMER_STOP ; 
 int EBUSY ; 
 scalar_t__ INT_MAX ; 
 int PWR_EVENT_EXIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_driver*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct cpuidle_driver*,struct cpuidle_device*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct cpuidle_state*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 

int FUNC18(struct cpuidle_device *dev, struct cpuidle_driver *drv,
			int index)
{
	int entered_state;

	struct cpuidle_state *target_state = &drv->states[index];
	bool broadcast = !!(target_state->flags & CPUIDLE_FLAG_TIMER_STOP);
	ktime_t time_start, time_end;

	/*
	 * Tell the time framework to switch to a broadcast timer because our
	 * local timer will be shut down.  If a local timer is used from another
	 * CPU as a broadcast timer, this call may fail if it is not available.
	 */
	if (broadcast && FUNC15()) {
		index = FUNC3(drv, dev, target_state->exit_latency,
					   CPUIDLE_FLAG_TIMER_STOP, false);
		if (index < 0) {
			FUNC2();
			return -EBUSY;
		}
		target_state = &drv->states[index];
		broadcast = false;
	}

	/* Take note of the planned idle state. */
	FUNC11(target_state);

	FUNC17(index, dev->cpu);
	time_start = FUNC9(FUNC6());

	FUNC13();
	entered_state = target_state->enter(dev, drv, index);
	FUNC12();

	FUNC10();
	time_end = FUNC9(FUNC6());
	FUNC17(PWR_EVENT_EXIT, dev->cpu);

	/* The cpu is no longer idle or about to enter idle. */
	FUNC11(NULL);

	if (broadcast) {
		if (FUNC0(!FUNC4()))
			FUNC7();

		FUNC16();
	}

	if (!FUNC1(drv, index))
		FUNC8();

	if (entered_state >= 0) {
		s64 diff, delay = drv->states[entered_state].exit_latency;
		int i;

		/*
		 * Update cpuidle counters
		 * This can be moved to within driver enter routine,
		 * but that results in multiple copies of same code.
		 */
		diff = FUNC5(time_end, time_start);
		if (diff > INT_MAX)
			diff = INT_MAX;

		dev->last_residency = (int)diff;
		dev->states_usage[entered_state].time += dev->last_residency;
		dev->states_usage[entered_state].usage++;

		if (diff < drv->states[entered_state].target_residency) {
			for (i = entered_state - 1; i >= 0; i--) {
				if (drv->states[i].disabled ||
				    dev->states_usage[i].disable)
					continue;

				/* Shallower states are enabled, so update. */
				dev->states_usage[entered_state].above++;
				break;
			}
		} else if (diff > delay) {
			for (i = entered_state + 1; i < drv->state_count; i++) {
				if (drv->states[i].disabled ||
				    dev->states_usage[i].disable)
					continue;

				/*
				 * Update if a deeper state would have been a
				 * better match for the observed idle duration.
				 */
				if (diff - delay >= drv->states[i].target_residency)
					dev->states_usage[entered_state].below++;

				break;
			}
		}
	} else {
		dev->last_residency = 0;
	}

	return entered_state;
}