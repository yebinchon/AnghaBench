#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmu {int dummy; } ;
struct cpu_hw_events {unsigned int txn_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  n_txn; } ;

/* Variables and functions */
 unsigned int PERF_PMU_TXN_ADD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ cpu_hw_events ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 
 struct cpu_hw_events* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct pmu *pmu, unsigned int txn_flags)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);

	FUNC0(cpuc->txn_flags);		/* txn already in flight */

	cpuc->txn_flags = txn_flags;
	if (txn_flags & ~PERF_PMU_TXN_ADD)
		return;

	FUNC2(pmu);
	FUNC1(cpu_hw_events.n_txn, 0);
}