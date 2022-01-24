#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mm_struct {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cpu_postboot ) () ;} ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_IDLE ; 
 int /*<<< orphan*/  CPU_BOOT_SUCCESS ; 
 int /*<<< orphan*/  DAIF_PROCCTX ; 
 int MPIDR_HWID_BITMASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__** cpu_ops ; 
 int /*<<< orphan*/  cpu_running ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 unsigned int FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

void FUNC23(void)
{
	u64 mpidr = FUNC14() & MPIDR_HWID_BITMASK;
	struct mm_struct *mm = &init_mm;
	unsigned int cpu;

	cpu = FUNC20(current);
	FUNC16(FUNC10(cpu));

	/*
	 * All kernel threads share the same mm context; grab a
	 * reference and switch to it.
	 */
	FUNC7(mm);
	current->active_mm = mm;

	/*
	 * TTBR0 is only used for the identity mapping at this stage. Make it
	 * point to zero page to avoid speculatively fetching new entries.
	 */
	FUNC3();

	if (FUNC19())
		FUNC5();

	FUNC12();
	FUNC21();

	/*
	 * If the system has established the capabilities, make sure
	 * this CPU ticks all of those. If it doesn't, the CPU will
	 * fail to come online.
	 */
	FUNC0();

	if (cpu_ops[cpu]->cpu_postboot)
		cpu_ops[cpu]->cpu_postboot();

	/*
	 * Log the CPU info before it is marked online and might get read.
	 */
	FUNC4();

	/*
	 * Enable GIC and timers.
	 */
	FUNC8(cpu);

	FUNC17(cpu);
	FUNC9(cpu);

	/*
	 * OK, now it's safe to let the boot CPU continue.  Wait for
	 * the CPU migration code to notice that the CPU is online
	 * before we continue.
	 */
	FUNC11("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
					 cpu, (unsigned long)mpidr,
					 FUNC13());
	FUNC22(CPU_BOOT_SUCCESS);
	FUNC15(cpu, true);
	FUNC1(&cpu_running);

	FUNC6(DAIF_PROCCTX);

	/*
	 * OK, it's off to the idle thread for us
	 */
	FUNC2(CPUHP_AP_ONLINE_IDLE);
}