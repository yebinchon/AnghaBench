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
typedef  scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct cpu_hw_events {int enabled; int /*<<< orphan*/  active_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DM_NMI ; 
 int /*<<< orphan*/  APIC_LVTPC ; 
 int /*<<< orphan*/  INTEL_PMC_IDX_FIXED_BTS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 scalar_t__ FUNC2 (struct pt_regs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct pt_regs *regs)
{
	struct cpu_hw_events *cpuc = FUNC13(&cpu_hw_events);
	int handled = 0;
	bool bts = false;
	u64 status;
	int pmu_enabled = cpuc->enabled;
	int loops = 0;

	/* PMU has been disabled because of counter freezing */
	cpuc->enabled = 0;
	if (FUNC12(INTEL_PMC_IDX_FIXED_BTS, cpuc->active_mask)) {
		bts = true;
		FUNC3();
		handled = FUNC7();
		handled += FUNC5();
	}
	status = FUNC8();
	if (!status)
		goto done;
again:
	FUNC9();
	if (++loops > 100) {
		static bool warned;

		if (!warned) {
			FUNC0(1, "perfevents: irq loop stuck!\n");
			FUNC11();
			warned = true;
		}
		FUNC10();
		goto done;
	}


	handled += FUNC2(regs, status);
done:
	/* Ack the PMI in the APIC */
	FUNC1(APIC_LVTPC, APIC_DM_NMI);

	/*
	 * The counters start counting immediately while ack the status.
	 * Make it as close as possible to IRET. This avoids bogus
	 * freezing on Skylake CPUs.
	 */
	if (status) {
		FUNC6(status);
	} else {
		/*
		 * CPU may issues two PMIs very close to each other.
		 * When the PMI handler services the first one, the
		 * GLOBAL_STATUS is already updated to reflect both.
		 * When it IRETs, the second PMI is immediately
		 * handled and it sees clear status. At the meantime,
		 * there may be a third PMI, because the freezing bit
		 * isn't set since the ack in first PMI handlers.
		 * Double check if there is more work to be done.
		 */
		status = FUNC8();
		if (status)
			goto again;
	}

	if (bts)
		FUNC4();
	cpuc->enabled = pmu_enabled;
	return handled;
}