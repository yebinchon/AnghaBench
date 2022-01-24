#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_4__ {int /*<<< orphan*/  pgd; } ;
typedef  TYPE_1__ pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  _PAGE_NX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tboot_mm ; 

__attribute__((used)) static int FUNC8(unsigned long vaddr, unsigned long pfn,
			  pgprot_t prot)
{
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	pgd = FUNC2(&tboot_mm, vaddr);
	p4d = FUNC0(&tboot_mm, pgd, vaddr);
	if (!p4d)
		return -1;
	pud = FUNC6(&tboot_mm, p4d, vaddr);
	if (!pud)
		return -1;
	pmd = FUNC3(&tboot_mm, pud, vaddr);
	if (!pmd)
		return -1;
	pte = FUNC4(&tboot_mm, pmd, vaddr);
	if (!pte)
		return -1;
	FUNC7(&tboot_mm, vaddr, pte, FUNC1(pfn, prot));
	FUNC5(pte);

	/*
	 * PTI poisons low addresses in the kernel page tables in the
	 * name of making them unusable for userspace.  To execute
	 * code at such a low address, the poison must be cleared.
	 *
	 * Note: 'pgd' actually gets set in p4d_alloc() _or_
	 * pud_alloc() depending on 4/5-level paging.
	 */
	pgd->pgd &= ~_PAGE_NX;

	return 0;
}