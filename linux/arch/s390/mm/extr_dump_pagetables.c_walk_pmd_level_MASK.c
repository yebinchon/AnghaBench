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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 scalar_t__ PMD_SIZE ; 
 int PTRS_PER_PMD ; 
 unsigned int _PAGE_INVALID ; 
 unsigned int _SEGMENT_ENTRY_NOEXEC ; 
 unsigned int _SEGMENT_ENTRY_PROTECT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kasan_early_shadow_pmd ; 
 unsigned long max_addr ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct pg_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct pg_state*,unsigned int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct seq_file *m, struct pg_state *st,
			   pud_t *pud, unsigned long addr)
{
	unsigned int prot;
	pmd_t *pmd;
	int i;

#ifdef CONFIG_KASAN
	if ((pud_val(*pud) & PAGE_MASK) == __pa(kasan_early_shadow_pmd)) {
		note_kasan_early_shadow_page(m, st);
		return;
	}
#endif

	pmd = FUNC5(pud, addr);
	for (i = 0; i < PTRS_PER_PMD && addr < max_addr; i++, pmd++) {
		st->current_address = addr;
		if (!FUNC4(*pmd)) {
			if (FUNC3(*pmd)) {
				prot = FUNC6(*pmd) &
					(_SEGMENT_ENTRY_PROTECT |
					 _SEGMENT_ENTRY_NOEXEC);
				FUNC2(m, st, prot, 3);
			} else
				FUNC8(m, st, pmd, addr);
		} else
			FUNC2(m, st, _PAGE_INVALID, 3);
		addr += PMD_SIZE;
	}
}