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
typedef  int u64 ;
struct pmu {int dummy; } ;
struct perf_event {TYPE_2__* ctx; } ;
struct pebs_basic {int dummy; } ;
struct cpu_hw_events {int n_pebs; int pebs_data_cfg; int pebs_record_size; } ;
struct TYPE_4__ {scalar_t__ pebs_baseline; } ;
struct TYPE_6__ {TYPE_1__ intel_cap; } ;
struct TYPE_5__ {struct pmu* pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct cpu_hw_events*) ; 
 int FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpu_hw_events*) ; 
 int /*<<< orphan*/  FUNC4 (struct pmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmu*) ; 
 TYPE_3__ x86_pmu ; 

__attribute__((used)) static void
FUNC6(bool needed_cb, struct cpu_hw_events *cpuc,
		  struct perf_event *event, bool add)
{
	struct pmu *pmu = event->ctx->pmu;
	/*
	 * Make sure we get updated with the first PEBS
	 * event. It will trigger also during removal, but
	 * that does not hurt:
	 */
	bool update = cpuc->n_pebs == 1;

	if (needed_cb != FUNC1(cpuc)) {
		if (!needed_cb)
			FUNC5(pmu);
		else
			FUNC4(pmu);

		update = true;
	}

	/*
	 * The PEBS record doesn't shrink on pmu::del(). Doing so would require
	 * iterating all remaining PEBS events to reconstruct the config.
	 */
	if (x86_pmu.intel_cap.pebs_baseline && add) {
		u64 pebs_data_cfg;

		/* Clear pebs_data_cfg and pebs_record_size for first PEBS. */
		if (cpuc->n_pebs == 1) {
			cpuc->pebs_data_cfg = 0;
			cpuc->pebs_record_size = sizeof(struct pebs_basic);
		}

		pebs_data_cfg = FUNC2(event);

		/* Update pebs_record_size if new event requires more data. */
		if (pebs_data_cfg & ~cpuc->pebs_data_cfg) {
			cpuc->pebs_data_cfg |= pebs_data_cfg;
			FUNC0();
			update = true;
		}
	}

	if (update)
		FUNC3(cpuc);
}