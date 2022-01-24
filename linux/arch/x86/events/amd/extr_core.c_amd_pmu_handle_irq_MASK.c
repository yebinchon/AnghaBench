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
struct pt_regs {int dummy; } ;
struct cpu_hw_events {int /*<<< orphan*/  active_mask; } ;

/* Variables and functions */
 int NMI_DONE ; 
 int NMI_HANDLED ; 
 int /*<<< orphan*/  X86_PMC_IDX_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  perf_nmi_tstamp ; 
 scalar_t__ perf_nmi_window ; 
 struct cpu_hw_events* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs)
{
	struct cpu_hw_events *cpuc = FUNC1(&cpu_hw_events);
	int active, handled;

	/*
	 * Obtain the active count before calling x86_pmu_handle_irq() since
	 * it is possible that x86_pmu_handle_irq() may make a counter
	 * inactive (through x86_pmu_stop).
	 */
	active = FUNC0(cpuc->active_mask, X86_PMC_IDX_MAX);

	/* Process any counter overflows */
	handled = FUNC5(regs);

	/*
	 * If a counter was handled, record a timestamp such that un-handled
	 * NMIs will be claimed if arriving within that window.
	 */
	if (handled) {
		FUNC3(perf_nmi_tstamp,
			       jiffies + perf_nmi_window);

		return handled;
	}

	if (FUNC4(jiffies, FUNC2(perf_nmi_tstamp)))
		return NMI_DONE;

	return NMI_HANDLED;
}