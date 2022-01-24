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
struct imc_pmu_ref {scalar_t__ refc; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_TRACE ; 
 int /*<<< orphan*/  SPRN_LDBAR ; 
 struct imc_pmu_ref* core_imc_refc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 () ; 
 int threads_per_core ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*,int) ; 
 struct imc_pmu_ref* trace_imc_refc ; 

__attribute__((used)) static void FUNC8(struct perf_event *event, int flags)
{
	int core_id = FUNC6() / threads_per_core;
	struct imc_pmu_ref *ref = NULL;

	if (core_imc_refc)
		ref = &core_imc_refc[core_id];
	if (!ref) {
		/* If core-imc is not enabled, use trace-imc reference count */
		if (trace_imc_refc)
			ref = &trace_imc_refc[core_id];
		if (!ref)
			return;
	}
	FUNC1(SPRN_LDBAR, 0);
	FUNC2(&ref->lock);
	ref->refc--;
	if (ref->refc == 0) {
		if (FUNC4(OPAL_IMC_COUNTERS_TRACE,
				FUNC0(FUNC6()))) {
			FUNC3(&ref->lock);
			FUNC5("trace-imc: Unable to stop the counters for core %d\n", core_id);
			return;
		}
	} else if (ref->refc < 0) {
		ref->refc = 0;
	}
	FUNC3(&ref->lock);
	FUNC7(event, flags);
}