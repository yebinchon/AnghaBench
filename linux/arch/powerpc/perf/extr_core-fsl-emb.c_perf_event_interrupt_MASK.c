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
struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct cpu_hw_events {struct perf_event** event; } ;
struct TYPE_2__ {int n_counter; } ;

/* Variables and functions */
 int MSR_PMM ; 
 int PMGC0_FCECE ; 
 int PMGC0_PMIE ; 
 int /*<<< orphan*/  PMRN_PMGC0 ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct pt_regs*) ; 
 TYPE_1__* ppmu ; 
 unsigned long FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event*,unsigned long,struct pt_regs*) ; 
 struct cpu_hw_events* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct pt_regs *regs)
{
	int i;
	struct cpu_hw_events *cpuhw = FUNC11(&cpu_hw_events);
	struct perf_event *event;
	unsigned long val;
	int found = 0;
	int nmi;

	nmi = FUNC8(regs);
	if (nmi)
		FUNC6();
	else
		FUNC0();

	for (i = 0; i < ppmu->n_counter; ++i) {
		event = cpuhw->event[i];

		val = FUNC9(i);
		if ((int)val < 0) {
			if (event) {
				/* event has overflowed */
				found = 1;
				FUNC10(event, val, regs);
			} else {
				/*
				 * Disabled counter is negative,
				 * reset it just in case.
				 */
				FUNC12(i, 0);
			}
		}
	}

	/* PMM will keep counters frozen until we return from the interrupt. */
	FUNC4(FUNC3() | MSR_PMM);
	FUNC5(PMRN_PMGC0, PMGC0_PMIE | PMGC0_FCECE);
	FUNC2();

	if (nmi)
		FUNC7();
	else
		FUNC1();
}