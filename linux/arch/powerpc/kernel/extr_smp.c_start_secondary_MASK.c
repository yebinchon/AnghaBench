#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * active_mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* take_timebase ) () ;int /*<<< orphan*/  (* setup_cpu ) (unsigned int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  processorCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CPUHP_AP_ONLINE_IDLE ; 
 scalar_t__ SYSTEM_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* cpu_callin_map ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct cpumask* FUNC4 (int) ; 
 struct cpumask* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct cpumask*) ; 
 TYPE_3__* current ; 
 scalar_t__ has_big_cores ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/ * numa_cpu_lookup_table ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int shared_caches ; 
 TYPE_2__* smp_ops ; 
 unsigned int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  tb_ticks_per_jiffy ; 
 int /*<<< orphan*/  FUNC23 () ; 
 TYPE_1__* vdso_data ; 
 int /*<<< orphan*/  FUNC24 () ; 

void FUNC25(void *unused)
{
	unsigned int cpu = FUNC18();
	struct cpumask *(*sibling_mask)(int) = cpu_sibling_mask;

	FUNC10(&init_mm);
	current->active_mm = &init_mm;

	FUNC19(cpu);
	FUNC15(tb_ticks_per_jiffy);
	FUNC12();
	cpu_callin_map[cpu] = 1;

	if (smp_ops->setup_cpu)
		smp_ops->setup_cpu(cpu);
	if (smp_ops->take_timebase)
		smp_ops->take_timebase();

	FUNC13();

#ifdef CONFIG_PPC64
	if (system_state == SYSTEM_RUNNING)
		vdso_data->processorCount++;

	vdso_getcpu_init();
#endif
	/* Update topology CPU masks */
	FUNC1(cpu);

	if (has_big_cores)
		sibling_mask = cpu_smallcore_mask;
	/*
	 * Check for any shared caches. Note that this must be done on a
	 * per-core basis because one core in the pair might be disabled.
	 */
	if (!FUNC7(FUNC3(cpu), sibling_mask(cpu)))
		shared_caches = true;

	FUNC17(numa_cpu_lookup_table[cpu]);
	FUNC16(FUNC9(numa_cpu_lookup_table[cpu]));

	FUNC20();
	FUNC11(cpu);
	FUNC14(cpu, true);

	FUNC2();

	FUNC8();

	/* We can enable ftrace for secondary cpus now */
	FUNC23();

	FUNC6(CPUHP_AP_ONLINE_IDLE);

	FUNC0();
}