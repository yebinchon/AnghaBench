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

/* Variables and functions */
 unsigned long KSEG0 ; 
 unsigned long PAGE_MASK ; 
 unsigned long R3K_ENTRYLO_D ; 
 unsigned long R3K_ENTRYLO_G ; 
 unsigned long R3K_ENTRYLO_N ; 
 unsigned long R3K_ENTRYLO_V ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,unsigned long,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned long FUNC3 () ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(int first, int last)
{
	int	i;
	unsigned int asid;
	unsigned long entryhi, entrylo0, asid_mask;

	asid_mask = FUNC0(&current_cpu_data);
	asid = FUNC3() & asid_mask;

	for (i = first; i <= last; i++) {
		FUNC6(i<<8);
		__asm__ __volatile__(
			".set\tnoreorder\n\t"
			"tlbr\n\t"
			"nop\n\t"
			".set\treorder");
		entryhi	 = FUNC3();
		entrylo0 = FUNC4();

		/* Unused entries have a virtual address of KSEG0.  */
		if ((entryhi & PAGE_MASK) != KSEG0 &&
		    (entrylo0 & R3K_ENTRYLO_G ||
		     (entryhi & asid_mask) == asid)) {
			/*
			 * Only print entries in use
			 */
			FUNC2("Index: %2d ", i);

			FUNC1("va=%08lx asid=%08lx"
				"  [pa=%06lx n=%d d=%d v=%d g=%d]",
				entryhi & PAGE_MASK,
				entryhi & asid_mask,
				entrylo0 & PAGE_MASK,
				(entrylo0 & R3K_ENTRYLO_N) ? 1 : 0,
				(entrylo0 & R3K_ENTRYLO_D) ? 1 : 0,
				(entrylo0 & R3K_ENTRYLO_V) ? 1 : 0,
				(entrylo0 & R3K_ENTRYLO_G) ? 1 : 0);
		}
	}
	FUNC2("\n");

	FUNC5(asid);
}