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
struct mm_struct {int /*<<< orphan*/  mm_users; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void (*) (void*),struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void (*) (void*),struct mm_struct*,int) ; 

void
FUNC13 (struct mm_struct *mm)
{
	cpumask_var_t cpus;
	FUNC9();
	/* this happens for the common case of a single-threaded fork():  */
	if (FUNC4(mm == current->active_mm && FUNC1(&mm->mm_users) == 1))
	{
		FUNC5(mm);
		FUNC10();
		return;
	}
	if (!FUNC0(&cpus, GFP_ATOMIC)) {
		FUNC11((void (*)(void *))local_finish_flush_tlb_mm,
			mm, 1);
	} else {
		FUNC2(cpus, FUNC8(mm));
		FUNC12(cpus,
			(void (*)(void *))local_finish_flush_tlb_mm, mm, 1);
		FUNC3(cpus);
	}
	FUNC6();
	FUNC5(mm);
	FUNC7();
	FUNC10();
}