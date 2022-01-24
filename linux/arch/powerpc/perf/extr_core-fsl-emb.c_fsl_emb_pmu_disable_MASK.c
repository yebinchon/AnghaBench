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
struct pmu {int dummy; } ;
struct cpu_hw_events {int disabled; int pmcs_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMGC0_FAC ; 
 int /*<<< orphan*/  PMRN_PMGC0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_events ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct cpu_hw_events* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pmu *pmu)
{
	struct cpu_hw_events *cpuhw;
	unsigned long flags;

	FUNC3(flags);
	cpuhw = FUNC6(&cpu_hw_events);

	if (!cpuhw->disabled) {
		cpuhw->disabled = 1;

		/*
		 * Check if we ever enabled the PMU on this cpu.
		 */
		if (!cpuhw->pmcs_enabled) {
			FUNC5();
			cpuhw->pmcs_enabled = 1;
		}

		if (FUNC0(&num_events)) {
			/*
			 * Set the 'freeze all counters' bit, and disable
			 * interrupts.  The barrier is to make sure the
			 * mtpmr has been executed and the PMU has frozen
			 * the events before we return.
			 */

			FUNC4(PMRN_PMGC0, PMGC0_FAC);
			FUNC1();
		}
	}
	FUNC2(flags);
}