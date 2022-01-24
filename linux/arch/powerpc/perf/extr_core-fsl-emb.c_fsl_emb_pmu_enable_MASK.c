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
struct cpu_hw_events {scalar_t__ n_events; scalar_t__ disabled; } ;

/* Variables and functions */
 int PMGC0_FCECE ; 
 int PMGC0_PMIE ; 
 int /*<<< orphan*/  PMRN_PMGC0 ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct cpu_hw_events* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pmu *pmu)
{
	struct cpu_hw_events *cpuhw;
	unsigned long flags;

	FUNC2(flags);
	cpuhw = FUNC5(&cpu_hw_events);
	if (!cpuhw->disabled)
		goto out;

	cpuhw->disabled = 0;
	FUNC4(cpuhw->n_events != 0);

	if (cpuhw->n_events > 0) {
		FUNC3(PMRN_PMGC0, PMGC0_PMIE | PMGC0_FCECE);
		FUNC0();
	}

 out:
	FUNC1(flags);
}