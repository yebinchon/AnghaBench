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
struct mm_struct {int dummy; } ;
struct TYPE_6__ {struct mm_struct* active_mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* init_per_cpu ) (unsigned int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* init_per_cpu ) (unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* machine_desc ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 TYPE_1__ plat_smp_ops ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 unsigned int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 

void FUNC14(void)
{
	struct mm_struct *mm = &init_mm;
	unsigned int cpu = FUNC11();

	/* MMU, Caches, Vector Table, Interrupts etc */
	FUNC10();

	FUNC4(mm);
	FUNC5(mm);
	current->active_mm = mm;
	FUNC1(cpu, FUNC3(mm));

	/* Some SMP H/w setup - for each cpu */
	if (plat_smp_ops.init_per_cpu)
		plat_smp_ops.init_per_cpu(cpu);

	if (machine_desc->init_per_cpu)
		machine_desc->init_per_cpu(cpu);

	FUNC6(cpu);
	FUNC9(cpu, true);

	FUNC7("## CPU%u LIVE ##: Executing Code...\n", cpu);

	FUNC2();
	FUNC8();
	FUNC0(CPUHP_AP_ONLINE_IDLE);
}