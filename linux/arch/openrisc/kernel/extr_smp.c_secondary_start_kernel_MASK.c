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
struct mm_struct {int /*<<< orphan*/  mm_count; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_running ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 

void FUNC14(void)
{
	struct mm_struct *mm = &init_mm;
	unsigned int cpu = FUNC12();
	/*
	 * All kernel threads share the same mm context; grab a
	 * reference and switch to it.
	 */
	FUNC0(&mm->mm_count);
	current->active_mm = mm;
	FUNC3(cpu, FUNC5(mm));

	FUNC8("CPU%u: Booted secondary processor\n", cpu);

	FUNC11();
	FUNC7();

	FUNC6(cpu);

	/*
	 * OK, now it's safe to let the boot CPU continue
	 */
	FUNC1(&cpu_running);

	FUNC13(cpu);
	FUNC10(cpu, true);

	FUNC4();

	FUNC9();
	/*
	 * OK, it's off to the idle thread for us
	 */
	FUNC2(CPUHP_AP_ONLINE_IDLE);
}