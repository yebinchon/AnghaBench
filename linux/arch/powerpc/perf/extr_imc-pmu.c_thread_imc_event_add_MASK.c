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
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_CORE ; 
 int PERF_EF_START ; 
 int /*<<< orphan*/  SPRN_LDBAR ; 
 int THREAD_IMC_ENABLE ; 
 int THREAD_IMC_LDBAR_MASK ; 
 struct imc_pmu_ref* core_imc_refc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  thread_imc_mem ; 
 int threads_per_core ; 

__attribute__((used)) static int FUNC10(struct perf_event *event, int flags)
{
	int core_id;
	struct imc_pmu_ref *ref;
	u64 ldbar_value, *local_mem = FUNC7(thread_imc_mem, FUNC9());

	if (flags & PERF_EF_START)
		FUNC1(event, flags);

	if (!FUNC2(FUNC9()))
		return -EINVAL;

	core_id = FUNC9() / threads_per_core;
	ldbar_value = ((u64)local_mem & THREAD_IMC_LDBAR_MASK) | THREAD_IMC_ENABLE;
	FUNC3(SPRN_LDBAR, ldbar_value);

	/*
	 * imc pmus are enabled only when it is used.
	 * See if this is triggered for the first time.
	 * If yes, take the mutex lock and enable the counters.
	 * If not, just increment the count in ref count struct.
	 */
	ref = &core_imc_refc[core_id];
	if (!ref)
		return -EINVAL;

	FUNC4(&ref->lock);
	if (ref->refc == 0) {
		if (FUNC6(OPAL_IMC_COUNTERS_CORE,
		    FUNC0(FUNC9()))) {
			FUNC5(&ref->lock);
			FUNC8("thread-imc: Unable to start the counter\
				for core %d\n", core_id);
			return -EINVAL;
		}
	}
	++ref->refc;
	FUNC5(&ref->lock);
	return 0;
}