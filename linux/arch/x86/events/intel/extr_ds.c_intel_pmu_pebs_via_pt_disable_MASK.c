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
struct perf_event {int dummy; } ;
struct cpu_hw_events {int pebs_enabled; } ;

/* Variables and functions */
 int PEBS_VIA_PT_MASK ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 struct cpu_hw_events* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct perf_event *event)
{
	struct cpu_hw_events *cpuc = FUNC1(&cpu_hw_events);

	if (!FUNC0(event))
		return;

	if (!(cpuc->pebs_enabled & ~PEBS_VIA_PT_MASK))
		cpuc->pebs_enabled &= ~PEBS_VIA_PT_MASK;
}