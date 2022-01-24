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
struct rapl_pmu {unsigned int cpu; int /*<<< orphan*/  timer_interval; int /*<<< orphan*/ * pmu; int /*<<< orphan*/  active_list; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct rapl_pmu** pmus; int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct rapl_pmu* FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 struct rapl_pmu* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  rapl_cpu_mask ; 
 int /*<<< orphan*/  FUNC7 (struct rapl_pmu*) ; 
 TYPE_1__* rapl_pmus ; 
 int /*<<< orphan*/  rapl_timer_ms ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 size_t FUNC10 (unsigned int) ; 

__attribute__((used)) static int FUNC11(unsigned int cpu)
{
	struct rapl_pmu *pmu = FUNC2(cpu);
	int target;

	if (!pmu) {
		pmu = FUNC5(sizeof(*pmu), GFP_KERNEL, FUNC1(cpu));
		if (!pmu)
			return -ENOMEM;

		FUNC8(&pmu->lock);
		FUNC0(&pmu->active_list);
		pmu->pmu = &rapl_pmus->pmu;
		pmu->timer_interval = FUNC6(rapl_timer_ms);
		FUNC7(pmu);

		rapl_pmus->pmus[FUNC10(cpu)] = pmu;
	}

	/*
	 * Check if there is an online cpu in the package which collects rapl
	 * events already.
	 */
	target = FUNC3(&rapl_cpu_mask, FUNC9(cpu));
	if (target < nr_cpu_ids)
		return 0;

	FUNC4(cpu, &rapl_cpu_mask);
	pmu->cpu = cpu;
	return 0;
}