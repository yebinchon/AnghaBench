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
struct pg_state {int to_dmesg; int check_wx; scalar_t__ wx_pages; void* current_address; } ;
typedef  int pgprotval_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/ * INIT_PGD ; 
 int PGD_LEVEL_MULT ; 
 int PTRS_PER_PGD ; 
 int _PAGE_RW ; 
 int _PAGE_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC11(struct seq_file *m, pgd_t *pgd,
				       bool checkwx, bool dmesg)
{
	pgd_t *start = INIT_PGD;
	pgprotval_t prot, eff;
	int i;
	struct pg_state st = {};

	if (pgd) {
		start = pgd;
		st.to_dmesg = dmesg;
	}

	st.check_wx = checkwx;
	if (checkwx)
		st.wx_pages = 0;

	for (i = 0; i < PTRS_PER_PGD; i++) {
		st.current_address = FUNC3(i * PGD_LEVEL_MULT);
		if (!FUNC7(*start) && !FUNC2(i)) {
			prot = FUNC5(*start);
#ifdef CONFIG_X86_PAE
			eff = _PAGE_USER | _PAGE_RW;
#else
			eff = prot;
#endif
			if (FUNC6(*start) || !FUNC8(*start)) {
				FUNC4(m, &st, FUNC0(prot), eff, 1);
			} else {
				FUNC10(m, &st, *start, eff,
					       i * PGD_LEVEL_MULT);
			}
		} else
			FUNC4(m, &st, FUNC0(0), 0, 1);

		FUNC1();
		start++;
	}

	/* Flush out the last page */
	st.current_address = FUNC3(PTRS_PER_PGD*PGD_LEVEL_MULT);
	FUNC4(m, &st, FUNC0(0), 0, 0);
	if (!checkwx)
		return;
	if (st.wx_pages)
		FUNC9("x86/mm: Checked W+X mappings: FAILED, %lu W+X pages found.\n",
			st.wx_pages);
	else
		FUNC9("x86/mm: Checked W+X mappings: passed, no W+X pages found.\n");
}