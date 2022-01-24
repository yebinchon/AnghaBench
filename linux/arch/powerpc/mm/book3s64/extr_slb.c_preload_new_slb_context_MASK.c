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
struct thread_info {scalar_t__ slb_preload_nr; } ;
struct mm_struct {unsigned long start_brk; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 scalar_t__ SLB_PRELOAD_NR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct thread_info* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct thread_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long) ; 

void FUNC8(unsigned long start, unsigned long sp)
{
	struct thread_info *ti = FUNC1();
	struct mm_struct *mm = current->mm;
	unsigned long heap = mm->start_brk;

	FUNC0(FUNC3());

	/* see above */
	if (ti->slb_preload_nr + 3 > SLB_PRELOAD_NR)
		return;

	FUNC2();

	/* Userspace entry address. */
	if (!FUNC4(start)) {
		if (FUNC6(ti, start))
			FUNC7(mm, start);
	}

	/* Top of stack, grows down. */
	if (!FUNC4(sp)) {
		if (FUNC6(ti, sp))
			FUNC7(mm, sp);
	}

	/* Bottom of heap, grows up. */
	if (heap && !FUNC4(heap)) {
		if (FUNC6(ti, heap))
			FUNC7(mm, heap);
	}

	/* see switch_slb */
	asm volatile("isync" : : : "memory");

	FUNC5();
}