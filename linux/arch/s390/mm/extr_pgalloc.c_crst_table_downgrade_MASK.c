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
struct TYPE_3__ {scalar_t__ asce_limit; int asce; } ;
struct mm_struct {int /*<<< orphan*/ * pgd; TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _ASCE_TABLE_LENGTH ; 
 int _ASCE_TYPE_SEGMENT ; 
 int _ASCE_USER_BITS ; 
 scalar_t__ _REGION2_SIZE ; 
 scalar_t__ _REGION3_SIZE ; 
 int _REGION_ENTRY_ORIGIN ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 

void FUNC8(struct mm_struct *mm)
{
	pgd_t *pgd;

	/* downgrade should only happen from 3 to 2 levels (compat only) */
	FUNC0(mm->context.asce_limit != _REGION2_SIZE);

	if (current->active_mm == mm) {
		FUNC3();
		FUNC2(mm);
	}

	pgd = mm->pgd;
	FUNC5(mm);
	mm->pgd = (pgd_t *) (FUNC6(*pgd) & _REGION_ENTRY_ORIGIN);
	mm->context.asce_limit = _REGION3_SIZE;
	mm->context.asce = FUNC1(mm->pgd) | _ASCE_TABLE_LENGTH |
			   _ASCE_USER_BITS | _ASCE_TYPE_SEGMENT;
	FUNC4(mm, (unsigned long *) pgd);

	if (current->active_mm == mm)
		FUNC7(mm);
}