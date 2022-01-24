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
struct cpa_data {int /*<<< orphan*/  force_static_prot; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPA_PROTECT ; 
 unsigned long PAGE_SIZE ; 
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cpa_data *cpa, pte_t *pte, unsigned long pfn,
			  pgprot_t ref_prot, unsigned long address,
			  unsigned long size)
{
	unsigned int npg = FUNC0(size);
	pgprot_t prot;

	/*
	 * If should_split_large_page() discovered an inconsistent mapping,
	 * remove the invalid protection in the split mapping.
	 */
	if (!cpa->force_static_prot)
		goto set;

	/* Hand in lpsize = 0 to enforce the protection mechanism */
	prot = FUNC5(ref_prot, address, pfn, npg, 0, CPA_PROTECT);

	if (FUNC2(prot) == FUNC2(ref_prot))
		goto set;

	/*
	 * If this is splitting a PMD, fix it up. PUD splits cannot be
	 * fixed trivially as that would require to rescan the newly
	 * installed PMD mappings after returning from split_large_page()
	 * so an eventual further split can allocate the necessary PTE
	 * pages. Warn for now and revisit it in case this actually
	 * happens.
	 */
	if (size == PAGE_SIZE)
		ref_prot = prot;
	else
		FUNC3("CPA: Cannot fixup static protections for PUD split\n");
set:
	FUNC4(pte, FUNC1(pfn, ref_prot));
}