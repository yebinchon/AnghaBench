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
struct debug_store {int /*<<< orphan*/  bts_buffer_base; int /*<<< orphan*/  bts_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  ds; } ;
struct TYPE_3__ {int num_counters; int num_counters_fixed; int version; scalar_t__ lbr_nr; } ;

/* Variables and functions */
 int DEBUGCTLMSR_FREEZE_LBRS_ON_PMI ; 
 int DEBUGCTLMSR_LBR ; 
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR0 ; 
 int /*<<< orphan*/  MSR_CORE_PERF_GLOBAL_CTRL ; 
 struct debug_store* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cpu_hw_events ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,unsigned long long) ; 
 TYPE_1__ x86_pmu ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(void)
{
	struct debug_store *ds = FUNC0(cpu_hw_events.ds);
	unsigned long flags;
	int idx;

	if (!x86_pmu.num_counters)
		return;

	FUNC5(flags);

	FUNC6("clearing PMU state on CPU#%d\n", FUNC7());

	for (idx = 0; idx < x86_pmu.num_counters; idx++) {
		FUNC10(FUNC11(idx), 0ull);
		FUNC10(FUNC12(idx),  0ull);
	}
	for (idx = 0; idx < x86_pmu.num_counters_fixed; idx++)
		FUNC10(MSR_ARCH_PERFMON_FIXED_CTR0 + idx, 0ull);

	if (ds)
		ds->bts_index = ds->bts_buffer_base;

	/* Ack all overflows and disable fixed counters */
	if (x86_pmu.version >= 2) {
		FUNC2(FUNC3());
		FUNC9(MSR_CORE_PERF_GLOBAL_CTRL, 0);
	}

	/* Reset LBRs and LBR freezing */
	if (x86_pmu.lbr_nr) {
		FUNC8(FUNC1() &
			~(DEBUGCTLMSR_FREEZE_LBRS_ON_PMI|DEBUGCTLMSR_LBR));
	}

	FUNC4(flags);
}