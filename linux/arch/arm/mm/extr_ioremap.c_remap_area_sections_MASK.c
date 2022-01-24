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
struct mem_type {int prot_sect; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PMD_SIZE ; 
 unsigned long SZ_1M ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,size_t) ; 

__attribute__((used)) static int
FUNC7(unsigned long virt, unsigned long pfn,
		    size_t size, const struct mem_type *type)
{
	unsigned long addr = virt, end = virt + size;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;

	/*
	 * Remove and free any PTE-based mapping, and
	 * sync the current kernel mapping.
	 */
	FUNC6(virt, size);

	pgd = FUNC3(addr);
	pud = FUNC5(pgd, addr);
	pmd = FUNC4(pud, addr);
	do {
		pmd[0] = FUNC1(FUNC0(pfn) | type->prot_sect);
		pfn += SZ_1M >> PAGE_SHIFT;
		pmd[1] = FUNC1(FUNC0(pfn) | type->prot_sect);
		pfn += SZ_1M >> PAGE_SHIFT;
		FUNC2(pmd);

		addr += PMD_SIZE;
		pmd += 2;
	} while (addr < end);

	return 0;
}