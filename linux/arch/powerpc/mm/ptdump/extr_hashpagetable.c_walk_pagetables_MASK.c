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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned int KERN_VIRT_START ; 
 unsigned int PGDIR_SIZE ; 
 unsigned int PTRS_PER_PGD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pg_state *st)
{
	pgd_t *pgd = FUNC1(0UL);
	unsigned int i;
	unsigned long addr;

	/*
	 * Traverse the linux pagetable structure and dump pages that are in
	 * the hash pagetable.
	 */
	for (i = 0; i < PTRS_PER_PGD; i++, pgd++) {
		addr = KERN_VIRT_START + i * PGDIR_SIZE;
		if (!FUNC0(*pgd))
			/* pgd exists */
			FUNC2(st, pgd, addr);
	}
}