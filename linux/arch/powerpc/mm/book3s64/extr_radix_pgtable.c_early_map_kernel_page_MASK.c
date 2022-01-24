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
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int PMD_SIZE ; 
 int /*<<< orphan*/  PMD_TABLE_SIZE ; 
 unsigned int PUD_SIZE ; 
 int /*<<< orphan*/  PUD_TABLE_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(unsigned long ea, unsigned long pa,
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

	pgdp = FUNC3(ea);
	if (FUNC2(*pgdp)) {
		pudp = FUNC0(PUD_TABLE_SIZE, nid,
						region_start, region_end);
		FUNC4(&init_mm, pgdp, pudp);
	}
	pudp = FUNC11(pgdp, ea);
	if (map_page_size == PUD_SIZE) {
		ptep = (pte_t *)pudp;
		goto set_the_pte;
	}
	if (FUNC10(*pudp)) {
		pmdp = FUNC0(PMD_TABLE_SIZE, nid,
						region_start, region_end);
		FUNC12(&init_mm, pudp, pmdp);
	}
	pmdp = FUNC5(pudp, ea);
	if (map_page_size == PMD_SIZE) {
		ptep = FUNC8(pmdp);
		goto set_the_pte;
	}
	if (!FUNC7(*pmdp)) {
		ptep = FUNC0(PAGE_SIZE, nid,
						region_start, region_end);
		FUNC6(&init_mm, pmdp, ptep);
	}
	ptep = FUNC9(pmdp, ea);

set_the_pte:
	FUNC13(&init_mm, ea, ptep, FUNC1(pfn, flags));
	FUNC14();
	return 0;
}