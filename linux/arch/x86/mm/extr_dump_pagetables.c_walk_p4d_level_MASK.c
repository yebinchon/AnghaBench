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
typedef  int /*<<< orphan*/  pgprotval_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int P4D_LEVEL_MULT ; 
 int PTRS_PER_P4D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void FUNC12 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct seq_file *m, struct pg_state *st, pgd_t addr,
			   pgprotval_t eff_in, unsigned long P)
{
	int i;
	p4d_t *start, *p4d_start;
	pgprotval_t prot, eff;

	if (PTRS_PER_P4D == 1)
		return FUNC12(m, st, FUNC0(FUNC11(addr)), eff_in, P);

	p4d_start = start = (p4d_t *)FUNC10(addr);

	for (i = 0; i < PTRS_PER_P4D; i++) {
		st->current_address = FUNC4(P + i * P4D_LEVEL_MULT);
		if (!FUNC8(*start)) {
			prot = FUNC6(*start);
			eff = FUNC2(eff_in, prot);
			if (FUNC7(*start) || !FUNC9(*start)) {
				FUNC5(m, st, FUNC1(prot), eff, 2);
			} else if (!FUNC3(m, st, p4d_start)) {
				FUNC12(m, st, *start, eff,
					       P + i * P4D_LEVEL_MULT);
			}
		} else
			FUNC5(m, st, FUNC1(0), 0, 2);

		start++;
	}
}