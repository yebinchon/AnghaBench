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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL_EXEC ; 
 unsigned long PAGE_SHIFT ; 
 int _PAGE_PRESENT ; 
 int _PAGE_TABLE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(
	pgd_t *pgd, pmd_t *pmd, pte_t *pte,
	unsigned long vaddr, unsigned long paddr)
{
	p4d_t *p4d;
	pud_t *pud;

	pgd += FUNC5(vaddr);
#ifdef CONFIG_X86_PAE
	if (!(pgd_val(*pgd) & _PAGE_PRESENT))
		set_pgd(pgd, __pgd(__pa(pmd) | _PAGE_PRESENT));
#endif
	p4d = FUNC3(pgd, vaddr);
	pud = FUNC10(p4d, vaddr);
	pmd = FUNC7(pud, vaddr);
	if (!(FUNC8(*pmd) & _PAGE_PRESENT))
		FUNC12(pmd, FUNC2(FUNC0(pte) | _PAGE_TABLE));
	pte = FUNC9(pmd, vaddr);
	FUNC13(pte, FUNC4(paddr >> PAGE_SHIFT, PAGE_KERNEL_EXEC));
}