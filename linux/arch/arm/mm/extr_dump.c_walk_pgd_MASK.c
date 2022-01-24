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
 unsigned int PGDIR_SIZE ; 
 unsigned int PTRS_PER_PGD ; 
 int /*<<< orphan*/  FUNC0 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct pg_state *st, struct mm_struct *mm,
			unsigned long start)
{
	pgd_t *pgd = FUNC2(mm, 0UL);
	unsigned i;
	unsigned long addr;

	for (i = 0; i < PTRS_PER_PGD; i++, pgd++) {
		addr = start + i * PGDIR_SIZE;
		if (!FUNC1(*pgd)) {
			FUNC4(st, pgd, addr);
		} else {
			FUNC0(st, addr, 1, FUNC3(*pgd), NULL);
		}
	}
}