#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned long current_stack_pointer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mm_struct *mm)
{
	unsigned long sp = current_stack_pointer;
	pgd_t *pgd = FUNC3(mm, sp);

	if (FUNC5()) {
		if (FUNC8(FUNC2(*pgd))) {
			pgd_t *pgd_ref = FUNC4(sp);

			FUNC7(pgd, *pgd_ref);
		}
	} else {
		/*
		 * "pgd" is faked.  The top level entries are "p4d"s, so sync
		 * the p4d.  This compiles to approximately the same code as
		 * the 5-level case.
		 */
		p4d_t *p4d = FUNC1(pgd, sp);

		if (FUNC8(FUNC0(*p4d))) {
			pgd_t *pgd_ref = FUNC4(sp);
			p4d_t *p4d_ref = FUNC1(pgd_ref, sp);

			FUNC6(p4d, *p4d_ref);
		}
	}
}