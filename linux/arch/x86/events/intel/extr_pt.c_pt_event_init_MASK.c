#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct perf_event {int /*<<< orphan*/  destroy; TYPE_1__ attr; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ pmu; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  pt_event_destroy ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 TYPE_3__ pt_pmu ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x86_lbr_exclusive_pt ; 

__attribute__((used)) static int FUNC4(struct perf_event *event)
{
	if (event->attr.type != pt_pmu.pmu.type)
		return -ENOENT;

	if (!FUNC1(event))
		return -EINVAL;

	if (FUNC2(x86_lbr_exclusive_pt))
		return -EBUSY;

	if (FUNC0(event)) {
		FUNC3(x86_lbr_exclusive_pt);
		return -ENOMEM;
	}

	event->destroy = pt_event_destroy;

	return 0;
}