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
typedef  unsigned long phys_addr_t ;
typedef  enum pg_level { ____Placeholder_pg_level } pg_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
#define  PG_LEVEL_1G 129 
#define  PG_LEVEL_2M 128 
 unsigned long PMD_PAGE_MASK ; 
 unsigned long PUD_PAGE_MASK ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

phys_addr_t FUNC5(void *__virt_addr)
{
	unsigned long virt_addr = (unsigned long)__virt_addr;
	phys_addr_t phys_addr;
	unsigned long offset;
	enum pg_level level;
	pte_t *pte;

	pte = FUNC1(virt_addr, &level);
	FUNC0(!pte);

	/*
	 * pXX_pfn() returns unsigned long, which must be cast to phys_addr_t
	 * before being left-shifted PAGE_SHIFT bits -- this trick is to
	 * make 32-PAE kernel work correctly.
	 */
	switch (level) {
	case PG_LEVEL_1G:
		phys_addr = (phys_addr_t)FUNC4(*(pud_t *)pte) << PAGE_SHIFT;
		offset = virt_addr & ~PUD_PAGE_MASK;
		break;
	case PG_LEVEL_2M:
		phys_addr = (phys_addr_t)FUNC2(*(pmd_t *)pte) << PAGE_SHIFT;
		offset = virt_addr & ~PMD_PAGE_MASK;
		break;
	default:
		phys_addr = (phys_addr_t)FUNC3(*pte) << PAGE_SHIFT;
		offset = virt_addr & ~PAGE_MASK;
	}

	return (phys_addr_t)(phys_addr | offset);
}