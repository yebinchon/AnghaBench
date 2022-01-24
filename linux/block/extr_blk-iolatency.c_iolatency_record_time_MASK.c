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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ max_depth; } ;
struct iolatency_grp {scalar_t__ min_lat_nsec; TYPE_1__ rq_depth; } ;
struct bio_issue {int dummy; } ;

/* Variables and functions */
 scalar_t__ UINT_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct bio_issue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iolatency_grp*) ; 
 int /*<<< orphan*/  FUNC4 (struct iolatency_grp*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct iolatency_grp *iolat,
				  struct bio_issue *issue, u64 now,
				  bool issue_as_root)
{
	u64 start = FUNC1(issue);
	u64 req_time;

	/*
	 * Have to do this so we are truncated to the correct time that our
	 * issue is truncated to.
	 */
	now = FUNC0(now);

	if (now <= start)
		return;

	req_time = now - start;

	/*
	 * We don't want to count issue_as_root bio's in the cgroups latency
	 * statistics as it could skew the numbers downwards.
	 */
	if (FUNC5(issue_as_root && iolat->rq_depth.max_depth != UINT_MAX)) {
		u64 sub = iolat->min_lat_nsec;
		if (req_time < sub)
			FUNC2(FUNC3(iolat), now, sub - req_time);
		return;
	}

	FUNC4(iolat, req_time);
}