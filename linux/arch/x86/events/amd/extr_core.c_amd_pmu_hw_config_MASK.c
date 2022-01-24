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
struct TYPE_4__ {scalar_t__ type; int config; scalar_t__ precise_ip; } ;
struct TYPE_3__ {int config; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;

/* Variables and functions */
 int AMD64_RAW_EVENT_MASK ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ PERF_TYPE_RAW ; 
 int FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 int FUNC3 (struct perf_event*) ; 

__attribute__((used)) static int FUNC4(struct perf_event *event)
{
	int ret;

	/* pass precise event sampling to ibs: */
	if (event->attr.precise_ip && FUNC1())
		return -ENOENT;

	if (FUNC2(event))
		return -EOPNOTSUPP;

	ret = FUNC3(event);
	if (ret)
		return ret;

	if (event->attr.type == PERF_TYPE_RAW)
		event->hw.config |= event->attr.config & AMD64_RAW_EVENT_MASK;

	return FUNC0(event);
}