#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * active_mm; } ;
struct TYPE_3__ {scalar_t__ new_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_IDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  __local_per_cpu_offset ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int callin_flag ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ cheetah_pcache_forced_on ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 TYPE_1__* FUNC5 () ; 
 int FUNC6 () ; 
 scalar_t__ hypervisor ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  smp_commenced_mask ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ tlb_type ; 

void FUNC15(void)
{
	int cpuid = FUNC6();

	__local_per_cpu_offset = FUNC1(cpuid);

	if (tlb_type == hypervisor)
		FUNC14();

	FUNC0();

	FUNC13();

	if (cheetah_pcache_forced_on)
		FUNC2();

	callin_flag = 1;
	__asm__ __volatile__("membar #Sync\n\t"
			     "flush  %%g6" : : : "memory");

	/* Clear this or we will die instantly when we
	 * schedule back to this idler...
	 */
	FUNC5()->new_child = 0;

	/* Attach to the address space of init_task. */
	FUNC8(&init_mm);
	current->active_mm = &init_mm;

	/* inform the notifiers about the new cpu */
	FUNC9(cpuid);

	while (!FUNC4(cpuid, &smp_commenced_mask))
		FUNC11();

	FUNC12(cpuid, true);

	/* idle thread is expected to have preempt disabled */
	FUNC10();

	FUNC7();

	FUNC3(CPUHP_AP_ONLINE_IDLE);
}