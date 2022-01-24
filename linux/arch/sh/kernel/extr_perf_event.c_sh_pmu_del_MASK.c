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
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int /*<<< orphan*/  used_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);

	FUNC2(event, PERF_EF_UPDATE);
	FUNC0(event->hw.idx, cpuc->used_mask);

	FUNC1(event);
}