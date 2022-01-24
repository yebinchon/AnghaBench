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
struct perf_event_attr {scalar_t__ precise_ip; int /*<<< orphan*/  exclude_kernel; } ;
struct perf_event {int /*<<< orphan*/  destroy; struct perf_event_attr attr; } ;
struct TYPE_2__ {int /*<<< orphan*/  bts_active; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  hw_perf_lbr_event_destroy ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x86_lbr_exclusive_lbr ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static int FUNC3(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;

	if (FUNC1(FUNC0(event))) {
		/* BTS is not supported by this architecture. */
		if (!x86_pmu.bts_active)
			return -EOPNOTSUPP;

		/* BTS is currently only allowed for user-mode. */
		if (!attr->exclude_kernel)
			return -EOPNOTSUPP;

		/* BTS is not allowed for precise events. */
		if (attr->precise_ip)
			return -EOPNOTSUPP;

		/* disallow bts if conflicting events are present */
		if (FUNC2(x86_lbr_exclusive_lbr))
			return -EBUSY;

		event->destroy = hw_perf_lbr_event_destroy;
	}

	return 0;
}