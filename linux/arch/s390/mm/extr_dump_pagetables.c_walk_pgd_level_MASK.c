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
struct seq_file {int dummy; } ;
struct pg_state {unsigned long current_address; } ;
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ PGDIR_SIZE ; 
 int PTRS_PER_PGD ; 
 int /*<<< orphan*/  _PAGE_INVALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long max_addr ; 
 int /*<<< orphan*/  FUNC1 (struct pg_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct seq_file *m)
{
	unsigned long addr = 0;
	struct pg_state st;
	pgd_t *pgd;
	int i;

	FUNC1(&st, 0, sizeof(st));
	for (i = 0; i < PTRS_PER_PGD && addr < max_addr; i++) {
		st.current_address = addr;
		pgd = FUNC4(addr);
		if (!FUNC3(*pgd))
			FUNC5(m, &st, pgd, addr);
		else
			FUNC2(m, &st, _PAGE_INVALID, 1);
		addr += PGDIR_SIZE;
		FUNC0();
	}
	/* Flush out the last page */
	st.current_address = max_addr;
	FUNC2(m, &st, 0, 0);
}