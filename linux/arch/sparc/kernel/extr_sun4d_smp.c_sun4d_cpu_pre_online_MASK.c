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
struct TYPE_5__ {int cpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* tlb_all ) () ;int /*<<< orphan*/  (* cache_all ) () ;} ;

/* Variables and functions */
 unsigned long PAGE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * cpu_callin_map ; 
 int* cpu_leds ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 TYPE_2__** current_set ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  init_mm ; 
 TYPE_1__* local_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  smp_commenced_mask ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  sun4d_imsk_lock ; 
 int /*<<< orphan*/  FUNC13 (unsigned long*,int) ; 

void FUNC14(void *arg)
{
	unsigned long flags;
	int cpuid;

	cpuid = FUNC4();

	/* Unblock the master CPU _only_ when the scheduler state
	 * of all secondary CPUs will be up-to-date, so after
	 * the SMP initialization the master will be just allowed
	 * to call the scheduler code.
	 */
	FUNC13((unsigned long *)&cpu_callin_map[cpuid], 1);
	local_ops->cache_all();
	local_ops->tlb_all();

	while ((unsigned long)current_set[cpuid] < PAGE_OFFSET)
		FUNC0();

	while (current_set[cpuid]->cpu != cpuid)
		FUNC0();

	/* Fix idle thread fields. */
	__asm__ __volatile__("ld [%0], %%g6\n\t"
			     : : "r" (&current_set[cpuid])
			     : "memory" /* paranoid */);

	cpu_leds[cpuid] = 0x9;
	FUNC6(cpuid);

	/* Attach to the address space of init_task. */
	FUNC5(&init_mm);
	current->active_mm = &init_mm;

	local_ops->cache_all();
	local_ops->tlb_all();

	while (!FUNC3(cpuid, &smp_commenced_mask))
		FUNC0();

	FUNC7(&sun4d_imsk_lock, flags);
	FUNC2(FUNC1() & ~0x4000); /* Allow PIL 14 as well */
	FUNC8(&sun4d_imsk_lock, flags);
}