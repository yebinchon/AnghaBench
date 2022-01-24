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
struct pmu {int dummy; } ;
struct cpu_cf_events {int flags; int state; } ;

/* Variables and functions */
 int CPUMF_LCCTL_ENABLE_SHIFT ; 
 int PMU_F_ENABLED ; 
 int /*<<< orphan*/  cpu_cf_events ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct cpu_cf_events* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pmu *pmu)
{
	struct cpu_cf_events *cpuhw = FUNC2(&cpu_cf_events);
	int err;
	u64 inactive;

	if (!(cpuhw->flags & PMU_F_ENABLED))
		return;

	inactive = cpuhw->state & ~((1 << CPUMF_LCCTL_ENABLE_SHIFT) - 1);
	err = FUNC0(inactive);
	if (err) {
		FUNC1("Disabling the performance measuring unit "
		       "failed with rc=%x\n", err);
		return;
	}

	cpuhw->flags &= ~PMU_F_ENABLED;
}