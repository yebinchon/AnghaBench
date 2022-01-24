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
struct rlimit {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  get_unmapped_area; int /*<<< orphan*/  mmap_base; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int PF_RANDOMIZE ; 
 int /*<<< orphan*/  TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  arch_get_unmapped_area ; 
 int /*<<< orphan*/  arch_get_unmapped_area_topdown ; 
 unsigned long FUNC0 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rlimit*) ; 
 scalar_t__ FUNC2 (struct rlimit*) ; 
 void FUNC3 (struct mm_struct*,unsigned long,struct rlimit*) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(struct mm_struct *mm, struct rlimit *rlim_stack)
{
	unsigned long random_factor = 0UL;

	if (current->flags & PF_RANDOMIZE)
		random_factor = FUNC0();

	if (FUNC4())
		return FUNC3(mm, random_factor,
						    rlim_stack);
	/*
	 * Fall back to the standard layout if the personality
	 * bit is set, or if the expected stack growth is unlimited:
	 */
	if (FUNC2(rlim_stack)) {
		mm->mmap_base = TASK_UNMAPPED_BASE;
		mm->get_unmapped_area = arch_get_unmapped_area;
	} else {
		mm->mmap_base = FUNC1(random_factor, rlim_stack);
		mm->get_unmapped_area = arch_get_unmapped_area_topdown;
	}
}