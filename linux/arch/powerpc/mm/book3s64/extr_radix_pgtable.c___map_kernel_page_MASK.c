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
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 unsigned long MAX_EA_BITS_PER_CONTEXT ; 
 unsigned long PAGE_SHIFT ; 
 unsigned int PMD_SIZE ; 
 unsigned int PUD_SIZE ; 
 unsigned long RADIX_KERN_MAP_SIZE ; 
 scalar_t__ RADIX_PGTABLE_RANGE ; 
 scalar_t__ TASK_SIZE_USER64 ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(unsigned long ea, unsigned long pa,
			  pgprot_t flags,
			  unsigned int map_page_size,
			  int nid,
			  unsigned long region_start, unsigned long region_end)
{
	unsigned long pfn = pa >> PAGE_SHIFT;
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;
	/*
	 * Make sure task size is correct as per the max adddr
	 */
	FUNC0(TASK_SIZE_USER64 > RADIX_PGTABLE_RANGE);

#ifdef CONFIG_PPC_64K_PAGES
	BUILD_BUG_ON(RADIX_KERN_MAP_SIZE != (1UL << MAX_EA_BITS_PER_CONTEXT));
#endif

	if (FUNC11(!FUNC9()))
		return FUNC1(ea, pa, flags, map_page_size,
						nid, region_start, region_end);

	/*
	 * Should make page table allocation functions be able to take a
	 * node, so we can place kernel page tables on the right nodes after
	 * boot.
	 */
	pgdp = FUNC3(ea);
	pudp = FUNC7(&init_mm, pgdp, ea);
	if (!pudp)
		return -ENOMEM;
	if (map_page_size == PUD_SIZE) {
		ptep = (pte_t *)pudp;
		goto set_the_pte;
	}
	pmdp = FUNC4(&init_mm, pudp, ea);
	if (!pmdp)
		return -ENOMEM;
	if (map_page_size == PMD_SIZE) {
		ptep = FUNC5(pmdp);
		goto set_the_pte;
	}
	ptep = FUNC6(pmdp, ea);
	if (!ptep)
		return -ENOMEM;

set_the_pte:
	FUNC8(&init_mm, ea, ptep, FUNC2(pfn, flags));
	FUNC10();
	return 0;
}