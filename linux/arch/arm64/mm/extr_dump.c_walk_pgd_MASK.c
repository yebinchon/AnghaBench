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
struct pg_state {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long TASK_SIZE_64 ; 
 int /*<<< orphan*/  FUNC2 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pg_state*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct pg_state *st, struct mm_struct *mm,
		     unsigned long start)
{
	unsigned long end = (start < TASK_SIZE_64) ? TASK_SIZE_64 : 0;
	unsigned long next, addr = start;
	pgd_t *pgdp = FUNC6(mm, start);

	do {
		pgd_t pgd = FUNC1(*pgdp);
		next = FUNC3(addr, end);

		if (FUNC5(pgd)) {
			FUNC2(st, addr, 1, FUNC7(pgd));
		} else {
			FUNC0(FUNC4(pgd));
			FUNC8(st, pgdp, addr, next);
		}
	} while (pgdp++, addr = next, addr != end);
}