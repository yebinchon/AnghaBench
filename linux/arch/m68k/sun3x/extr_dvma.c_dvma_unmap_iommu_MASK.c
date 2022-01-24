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
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long DVMA_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void FUNC6(unsigned long baddr, int len)
{

	int index, end;


	index = baddr >> DVMA_PAGE_SHIFT;
	end = (FUNC0(baddr+len) >> DVMA_PAGE_SHIFT);

	for(; index < end ; index++) {
		FUNC4("freeing bus mapping %08x\n",
			 index << DVMA_PAGE_SHIFT);
#if 0
		if(!dvma_entry_use(index))
			pr_info("dvma_unmap freeing unused entry %04x\n",
				index);
		else
			dvma_entry_dec(index);
#endif
		FUNC1(index);
	}

}