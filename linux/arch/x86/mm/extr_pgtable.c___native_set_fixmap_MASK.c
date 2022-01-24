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
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FIXMAP_PMD_NUM ; 
 int PTRS_PER_PTE ; 
 int __end_of_fixed_addresses ; 
 int __end_of_permanent_fixed_addresses ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  fixmaps_set ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

void FUNC4(enum fixed_addresses idx, pte_t pte)
{
	unsigned long address = FUNC2(idx);

#ifdef CONFIG_X86_64
       /*
	* Ensure that the static initial page tables are covering the
	* fixmap completely.
	*/
	BUILD_BUG_ON(__end_of_permanent_fixed_addresses >
		     (FIXMAP_PMD_NUM * PTRS_PER_PTE));
#endif

	if (idx >= __end_of_fixed_addresses) {
		FUNC0();
		return;
	}
	FUNC3(address, pte);
	fixmaps_set++;
}