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
struct pg_state {int /*<<< orphan*/  current_address; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprotval_t ;

/* Variables and functions */
 int PTE_LEVEL_MULT ; 
 int PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct seq_file *m, struct pg_state *st, pmd_t addr,
			   pgprotval_t eff_in, unsigned long P)
{
	int i;
	pte_t *pte;
	pgprotval_t prot, eff;

	for (i = 0; i < PTRS_PER_PTE; i++) {
		st->current_address = FUNC2(P + i * PTE_LEVEL_MULT);
		pte = FUNC5(&addr, st->current_address);
		prot = FUNC4(*pte);
		eff = FUNC1(eff_in, prot);
		FUNC3(m, st, FUNC0(prot), eff, 5);
		FUNC6(pte);
	}
}