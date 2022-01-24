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
struct pmu {int dummy; } ;
struct cpu_hw_events {int enabled; scalar_t__ n_events; int /*<<< orphan*/  idx_mask; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV67_PCTR_MODE_AGGREGATE ; 
 int /*<<< orphan*/  PERFMON_CMD_DESIRED_EVENTS ; 
 int /*<<< orphan*/  PERFMON_CMD_ENABLE ; 
 int /*<<< orphan*/  PERFMON_CMD_LOGGING_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*) ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pmu *pmu)
{
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);

	if (cpuc->enabled)
		return;

	cpuc->enabled = 1;
	FUNC0();

	if (cpuc->n_events > 0) {
		/* Update cpuc with information from any new scheduled events. */
		FUNC1(cpuc);

		/* Start counting the desired events. */
		FUNC3(PERFMON_CMD_LOGGING_OPTIONS, EV67_PCTR_MODE_AGGREGATE);
		FUNC3(PERFMON_CMD_DESIRED_EVENTS, cpuc->config);
		FUNC3(PERFMON_CMD_ENABLE, cpuc->idx_mask);
	}
}