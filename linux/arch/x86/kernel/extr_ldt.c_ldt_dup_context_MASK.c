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
struct TYPE_2__ {int /*<<< orphan*/  lock; struct ldt_struct* ldt; } ;
struct mm_struct {TYPE_1__ context; } ;
struct ldt_struct {int nr_entries; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 int LDT_ENTRY_SIZE ; 
 struct ldt_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ldt_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct ldt_struct*) ; 
 int FUNC4 (struct mm_struct*,struct ldt_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mm_struct *old_mm, struct mm_struct *mm)
{
	struct ldt_struct *new_ldt;
	int retval = 0;

	if (!old_mm)
		return 0;

	FUNC6(&old_mm->context.lock);
	if (!old_mm->context.ldt)
		goto out_unlock;

	new_ldt = FUNC0(old_mm->context.ldt->nr_entries);
	if (!new_ldt) {
		retval = -ENOMEM;
		goto out_unlock;
	}

	FUNC5(new_ldt->entries, old_mm->context.ldt->entries,
	       new_ldt->nr_entries * LDT_ENTRY_SIZE);
	FUNC1(new_ldt);

	retval = FUNC4(mm, new_ldt, 0);
	if (retval) {
		FUNC2(mm);
		FUNC3(new_ldt);
		goto out_unlock;
	}
	mm->context.ldt = new_ldt;

out_unlock:
	FUNC7(&old_mm->context.lock);
	return retval;
}