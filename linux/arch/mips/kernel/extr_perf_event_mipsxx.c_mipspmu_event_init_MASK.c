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
struct TYPE_2__ {int type; } ;
struct perf_event {scalar_t__ cpu; TYPE_1__ attr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
#define  PERF_TYPE_HARDWARE 130 
#define  PERF_TYPE_HW_CACHE 129 
#define  PERF_TYPE_RAW 128 
 int FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  active_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct perf_event*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmu_reserve_mutex ; 

__attribute__((used)) static int FUNC9(struct perf_event *event)
{
	int err = 0;

	/* does not support taken branch sampling */
	if (FUNC5(event))
		return -EOPNOTSUPP;

	switch (event->attr.type) {
	case PERF_TYPE_RAW:
	case PERF_TYPE_HARDWARE:
	case PERF_TYPE_HW_CACHE:
		break;

	default:
		return -ENOENT;
	}

	if (event->cpu >= 0 && !FUNC4(event->cpu))
		return -ENODEV;

	if (!FUNC2(&active_events)) {
		FUNC7(&pmu_reserve_mutex);
		if (FUNC3(&active_events) == 0)
			err = FUNC6();

		if (!err)
			FUNC1(&active_events);
		FUNC8(&pmu_reserve_mutex);
	}

	if (err)
		return err;

	return FUNC0(event);
}