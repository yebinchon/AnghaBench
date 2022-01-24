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
struct pg_state {unsigned long start_address; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PGDIR_MASK ; 
 scalar_t__ PGDIR_SIZE ; 
 unsigned int PTRS_PER_PGD ; 
 int /*<<< orphan*/  FUNC0 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct pg_state *st)
{
	unsigned int i;
	unsigned long addr = st->start_address & PGDIR_MASK;
	pgd_t *pgd = FUNC4(addr);

	/*
	 * Traverse the linux pagetable structure and dump pages that are in
	 * the hash pagetable.
	 */
	for (i = FUNC1(addr); i < PTRS_PER_PGD; i++, pgd++, addr += PGDIR_SIZE) {
		if (!FUNC3(*pgd) && !FUNC2(*pgd))
			/* pgd exists */
			FUNC6(st, pgd, addr);
		else
			FUNC0(st, addr, 1, FUNC5(*pgd));
	}
}