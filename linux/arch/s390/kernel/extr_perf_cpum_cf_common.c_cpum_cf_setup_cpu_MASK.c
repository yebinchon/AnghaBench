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
struct cpu_cf_events {int /*<<< orphan*/  flags; int /*<<< orphan*/  info; } ;

/* Variables and functions */
#define  PMC_INIT 129 
#define  PMC_RELEASE 128 
 int /*<<< orphan*/  PMU_F_RESERVED ; 
 int /*<<< orphan*/  cpu_cf_events ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cpu_cf_events* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *flags)
{
	struct cpu_cf_events *cpuhw = FUNC3(&cpu_cf_events);

	switch (*((int *) flags)) {
	case PMC_INIT:
		FUNC1(&cpuhw->info, 0, sizeof(cpuhw->info));
		FUNC2(&cpuhw->info);
		cpuhw->flags |= PMU_F_RESERVED;
		break;

	case PMC_RELEASE:
		cpuhw->flags &= ~PMU_F_RESERVED;
		break;
	}

	/* Disable CPU counter sets */
	FUNC0(0);
}