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
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 scalar_t__ P4D_SIZE ; 
 int PAGE_MASK ; 
 int PTRS_PER_P4D ; 
 int /*<<< orphan*/  _PAGE_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kasan_early_shadow_p4d ; 
 unsigned long max_addr ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct pg_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct seq_file *m, struct pg_state *st,
			   pgd_t *pgd, unsigned long addr)
{
	p4d_t *p4d;
	int i;

#ifdef CONFIG_KASAN
	if ((pgd_val(*pgd) & PAGE_MASK) == __pa(kasan_early_shadow_p4d)) {
		note_kasan_early_shadow_page(m, st);
		return;
	}
#endif

	p4d = FUNC4(pgd, addr);
	for (i = 0; i < PTRS_PER_P4D && addr < max_addr; i++, p4d++) {
		st->current_address = addr;
		if (!FUNC3(*p4d))
			FUNC6(m, st, p4d, addr);
		else
			FUNC2(m, st, _PAGE_INVALID, 2);
		addr += P4D_SIZE;
	}
}