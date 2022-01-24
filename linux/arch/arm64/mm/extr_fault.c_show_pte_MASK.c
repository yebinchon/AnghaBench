#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SZ_1K ; 
 TYPE_1__* current ; 
 struct mm_struct init_mm ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vabits_actual ; 

__attribute__((used)) static void FUNC21(unsigned long addr)
{
	struct mm_struct *mm;
	pgd_t *pgdp;
	pgd_t pgd;

	if (FUNC1(addr)) {
		/* TTBR0 */
		mm = current->active_mm;
		if (mm == &init_mm) {
			FUNC12("[%016lx] user address but active_mm is swapper\n",
				 addr);
			return;
		}
	} else if (FUNC2(addr)) {
		/* TTBR1 */
		mm = &init_mm;
	} else {
		FUNC12("[%016lx] address between user and kernel address ranges\n",
			 addr);
		return;
	}

	FUNC12("%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\n",
		 mm == &init_mm ? "swapper" : "user", PAGE_SIZE / SZ_1K,
		 vabits_actual, FUNC3(mm));
	pgdp = FUNC6(mm, addr);
	pgd = FUNC0(*pgdp);
	FUNC12("[%016lx] pgd=%016llx", addr, FUNC7(pgd));

	do {
		pud_t *pudp, pud;
		pmd_t *pmdp, pmd;
		pte_t *ptep, pte;

		if (FUNC5(pgd) || FUNC4(pgd))
			break;

		pudp = FUNC19(pgdp, addr);
		pud = FUNC0(*pudp);
		FUNC13(", pud=%016llx", FUNC20(pud));
		if (FUNC18(pud) || FUNC17(pud))
			break;

		pmdp = FUNC10(pudp, addr);
		pmd = FUNC0(*pmdp);
		FUNC13(", pmd=%016llx", FUNC11(pmd));
		if (FUNC9(pmd) || FUNC8(pmd))
			break;

		ptep = FUNC14(pmdp, addr);
		pte = FUNC0(*ptep);
		FUNC13(", pte=%016llx", FUNC16(pte));
		FUNC15(ptep);
	} while(0);

	FUNC13("\n");
}