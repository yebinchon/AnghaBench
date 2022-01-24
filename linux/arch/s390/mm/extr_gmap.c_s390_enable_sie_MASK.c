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
struct TYPE_3__ {int has_pgste; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TASK_SIZE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 scalar_t__ FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zap_zero_walk_ops ; 

int FUNC6(void)
{
	struct mm_struct *mm = current->mm;

	/* Do we have pgstes? if yes, we are done */
	if (FUNC2(mm))
		return 0;
	/* Fail if the page tables are 2K */
	if (!FUNC1(mm))
		return -EINVAL;
	FUNC0(&mm->mmap_sem);
	mm->context.has_pgste = 1;
	/* split thp mappings and disable thp for future mappings */
	FUNC3(mm);
	FUNC5(mm, 0, TASK_SIZE, &zap_zero_walk_ops, NULL);
	FUNC4(&mm->mmap_sem);
	return 0;
}