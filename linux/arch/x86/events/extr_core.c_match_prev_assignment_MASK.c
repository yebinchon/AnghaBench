#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hw_perf_event {scalar_t__ idx; scalar_t__ last_cpu; scalar_t__ last_tag; } ;
struct cpu_hw_events {scalar_t__* assign; scalar_t__* tags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline int FUNC1(struct hw_perf_event *hwc,
					struct cpu_hw_events *cpuc,
					int i)
{
	return hwc->idx == cpuc->assign[i] &&
		hwc->last_cpu == FUNC0() &&
		hwc->last_tag == cpuc->tags[i];
}