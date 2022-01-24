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
typedef  int phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FIX_HOLE ; 
 int PAGE_SHIFT ; 
 int __end_of_fixed_addresses ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/ * fixmap_pte ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
{
	unsigned long addr = FUNC1(idx);
	pte_t *ptep;

	FUNC0(idx <= FIX_HOLE || idx >= __end_of_fixed_addresses);

	ptep = &fixmap_pte[FUNC6(addr)];

	if (FUNC4(prot)) {
		FUNC7(ptep, FUNC3(phys >> PAGE_SHIFT, prot));
	} else {
		FUNC5(&init_mm, addr, ptep);
		FUNC2(addr);
	}
}