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
typedef  int u64 ;
struct perf_event {int dummy; } ;
struct imc_pmu_ref {scalar_t__ refc; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_TRACE ; 
 int /*<<< orphan*/  SPRN_LDBAR ; 
 int THREAD_IMC_LDBAR_MASK ; 
 int TRACE_IMC_ENABLE ; 
 struct imc_pmu_ref* core_imc_refc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 () ; 
 int threads_per_core ; 
 struct imc_pmu_ref* trace_imc_refc ; 

__attribute__((used)) static int FUNC8(struct perf_event *event, int flags)
{
	int core_id = FUNC7() / threads_per_core;
	struct imc_pmu_ref *ref = NULL;
	u64 local_mem, ldbar_value;

	/* Set trace-imc bit in ldbar and load ldbar with per-thread memory address */
	local_mem = FUNC1();
	ldbar_value = ((u64)local_mem & THREAD_IMC_LDBAR_MASK) | TRACE_IMC_ENABLE;

	if (core_imc_refc)
		ref = &core_imc_refc[core_id];
	if (!ref) {
		/* If core-imc is not enabled, use trace-imc reference count */
		if (trace_imc_refc)
			ref = &trace_imc_refc[core_id];
		if (!ref)
			return -EINVAL;
	}
	FUNC2(SPRN_LDBAR, ldbar_value);
	FUNC3(&ref->lock);
	if (ref->refc == 0) {
		if (FUNC5(OPAL_IMC_COUNTERS_TRACE,
				FUNC0(FUNC7()))) {
			FUNC4(&ref->lock);
			FUNC6("trace-imc: Unable to start the counters for core %d\n", core_id);
			FUNC2(SPRN_LDBAR, 0);
			return -EINVAL;
		}
	}
	++ref->refc;
	FUNC4(&ref->lock);

	return 0;
}