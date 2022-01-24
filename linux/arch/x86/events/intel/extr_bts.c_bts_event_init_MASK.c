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
struct TYPE_3__ {scalar_t__ type; scalar_t__ exclude_kernel; } ;
struct perf_event {int /*<<< orphan*/  destroy; TYPE_1__ attr; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  bts_event_destroy ; 
 TYPE_2__ bts_pmu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x86_lbr_exclusive_bts ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct perf_event *event)
{
	int ret;

	if (event->attr.type != bts_pmu.type)
		return -ENOENT;

	/*
	 * BTS leaks kernel addresses even when CPL0 tracing is
	 * disabled, so disallow intel_bts driver for unprivileged
	 * users on paranoid systems since it provides trace data
	 * to the user in a zero-copy fashion.
	 *
	 * Note that the default paranoia setting permits unprivileged
	 * users to profile the kernel.
	 */
	if (event->attr.exclude_kernel && FUNC1() &&
	    !FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (FUNC2(x86_lbr_exclusive_bts))
		return -EBUSY;

	ret = FUNC4();
	if (ret) {
		FUNC3(x86_lbr_exclusive_bts);
		return ret;
	}

	event->destroy = bts_event_destroy;

	return 0;
}