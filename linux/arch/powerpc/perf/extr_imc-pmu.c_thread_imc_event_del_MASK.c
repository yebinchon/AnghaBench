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
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_CORE ; 
 int /*<<< orphan*/  SPRN_LDBAR ; 
 struct imc_pmu_ref* core_imc_refc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 () ; 
 int threads_per_core ; 

__attribute__((used)) static void FUNC8(struct perf_event *event, int flags)
{

	int core_id;
	struct imc_pmu_ref *ref;

	FUNC2(SPRN_LDBAR, 0);

	core_id = FUNC7() / threads_per_core;
	ref = &core_imc_refc[core_id];

	FUNC3(&ref->lock);
	ref->refc--;
	if (ref->refc == 0) {
		if (FUNC5(OPAL_IMC_COUNTERS_CORE,
		    FUNC0(FUNC7()))) {
			FUNC4(&ref->lock);
			FUNC6("thread-imc: Unable to stop the counters\
				for core %d\n", core_id);
			return;
		}
	} else if (ref->refc < 0) {
		ref->refc = 0;
	}
	FUNC4(&ref->lock);
	/*
	 * Take a snapshot and calculate the delta and update
	 * the event counter values.
	 */
	FUNC1(event);
}