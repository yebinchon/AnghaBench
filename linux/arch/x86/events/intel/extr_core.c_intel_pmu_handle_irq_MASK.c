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
typedef  scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct cpu_hw_events {int enabled; } ;
struct TYPE_2__ {scalar_t__ late_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DM_NMI ; 
 int /*<<< orphan*/  APIC_LVTPC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 scalar_t__ FUNC4 (struct pt_regs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct cpu_hw_events* FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static int FUNC15(struct pt_regs *regs)
{
	struct cpu_hw_events *cpuc;
	int loops;
	u64 status;
	int handled;
	int pmu_enabled;

	cpuc = FUNC14(&cpu_hw_events);

	/*
	 * Save the PMU state.
	 * It needs to be restored when leaving the handler.
	 */
	pmu_enabled = cpuc->enabled;
	/*
	 * No known reason to not always do late ACK,
	 * but just in case do it opt-in.
	 */
	if (!x86_pmu.late_ack)
		FUNC3(APIC_LVTPC, APIC_DM_NMI);
	FUNC5();
	cpuc->enabled = 0;
	FUNC1();
	handled = FUNC9();
	handled += FUNC7();
	status = FUNC10();
	if (!status)
		goto done;

	loops = 0;
again:
	FUNC11();
	FUNC8(status);
	if (++loops > 100) {
		static bool warned;

		if (!warned) {
			FUNC0(1, "perfevents: irq loop stuck!\n");
			FUNC13();
			warned = true;
		}
		FUNC12();
		goto done;
	}

	handled += FUNC4(regs, status);

	/*
	 * Repeat if there is more work to be done:
	 */
	status = FUNC10();
	if (status)
		goto again;

done:
	/* Only restore PMU state when it's active. See x86_pmu_disable(). */
	cpuc->enabled = pmu_enabled;
	if (pmu_enabled)
		FUNC2(0, true);
	FUNC6();

	/*
	 * Only unmask the NMI after the overflow counters
	 * have been reset. This avoids spurious NMIs on
	 * Haswell CPUs.
	 */
	if (x86_pmu.late_ack)
		FUNC3(APIC_LVTPC, APIC_DM_NMI);
	return handled;
}