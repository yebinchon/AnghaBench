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
typedef  unsigned long long u64 ;
struct perf_event {int dummy; } ;
struct hw_perf_event {unsigned long long sample_period; unsigned long long last_period; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  period_left; } ;
struct TYPE_2__ {unsigned long long max_period; unsigned long long overflow; int /*<<< orphan*/  (* write_counter ) (int,unsigned long long) ;} ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long long) ; 
 TYPE_1__ mipspmu ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long long) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct perf_event *event,
				    struct hw_perf_event *hwc,
				    int idx)
{
	u64 left = FUNC0(&hwc->period_left);
	u64 period = hwc->sample_period;
	int ret = 0;

	if (FUNC4((left + period) & (1ULL << 63))) {
		/* left underflowed by more than period. */
		left = period;
		FUNC1(&hwc->period_left, left);
		hwc->last_period = period;
		ret = 1;
	} else	if (FUNC4((left + period) <= period)) {
		/* left underflowed by less than period. */
		left += period;
		FUNC1(&hwc->period_left, left);
		hwc->last_period = period;
		ret = 1;
	}

	if (left > mipspmu.max_period) {
		left = mipspmu.max_period;
		FUNC1(&hwc->period_left, left);
	}

	FUNC1(&hwc->prev_count, mipspmu.overflow - left);

	mipspmu.write_counter(idx, mipspmu.overflow - left);

	FUNC2(event);

	return ret;
}