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
typedef  int u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct cpu_hw_events {int /*<<< orphan*/  used_mask; } ;
struct TYPE_2__ {unsigned int num_counters; int (* read_counter ) (int) ;int overflow; } ;

/* Variables and functions */
 int CAUSEF_PCI ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 scalar_t__ cpu_has_perf_cntr_intr_bit ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct pt_regs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*,int,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ mipspmu ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct perf_sample_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmuint_rwlock ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(void)
{
	struct cpu_hw_events *cpuc = FUNC11(&cpu_hw_events);
	struct perf_sample_data data;
	unsigned int counters = mipspmu.num_counters;
	u64 counter;
	int n, handled = IRQ_NONE;
	struct pt_regs *regs;

	if (cpu_has_perf_cntr_intr_bit && !(FUNC5() & CAUSEF_PCI))
		return handled;
	/*
	 * First we pause the local counters, so that when we are locked
	 * here, the counters are all paused. When it gets locked due to
	 * perf_disable(), the timer interrupt handler will be delayed.
	 *
	 * See also mipsxx_pmu_start().
	 */
	FUNC3();
#ifdef CONFIG_MIPS_PERF_SHARED_TC_COUNTERS
	read_lock(&pmuint_rwlock);
#endif

	regs = FUNC0();

	FUNC4(&data, 0, 0);

	for (n = counters - 1; n >= 0; n--) {
		if (!FUNC10(n, cpuc->used_mask))
			continue;

		counter = mipspmu.read_counter(n);
		if (!(counter & mipspmu.overflow))
			continue;

		FUNC1(cpuc, n, &data, regs);
		handled = IRQ_HANDLED;
	}

#ifdef CONFIG_MIPS_PERF_SHARED_TC_COUNTERS
	read_unlock(&pmuint_rwlock);
#endif
	FUNC8();

	/*
	 * Do all the work for the pending perf events. We can do this
	 * in here because the performance counter interrupt is a regular
	 * interrupt, not NMI.
	 */
	if (handled == IRQ_HANDLED)
		FUNC2();

	return handled;
}