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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 unsigned long _PAGE_GLOBAL ; 
 unsigned long _PAGE_PRESENT ; 
 unsigned long _PAGE_READ ; 
 unsigned long _PAGE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(pte_t *pte, unsigned long address,
				unsigned long size, unsigned long phys_addr,
				unsigned long flags)
{
	unsigned long end;
	unsigned long pfn;
	pgprot_t pgprot = FUNC2(_PAGE_GLOBAL | _PAGE_PRESENT | _PAGE_READ
				| _PAGE_WRITE | flags);

	address &= ~PMD_MASK;
	end = address + size;
	if (end > PMD_SIZE)
		end = PMD_SIZE;
	if (address >= end)
		FUNC0();
	pfn = FUNC1(phys_addr);
	do {
		if (!FUNC5(*pte)) {
			FUNC4("remap_area_pte: page already exists\n");
			FUNC0();
		}
		FUNC6(pte, FUNC3(pfn, pgprot));
		address += PAGE_SIZE;
		pfn++;
		pte++;
	} while (address && (address < end));
}