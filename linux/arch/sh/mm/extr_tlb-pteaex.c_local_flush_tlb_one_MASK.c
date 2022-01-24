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
 int MMU_ITLB_ADDRESS_ARRAY ; 
 int MMU_ITLB_ADDRESS_ARRAY2 ; 
 int MMU_PAGE_ASSOC_BIT ; 
 int MMU_UTLB_ADDRESS_ARRAY ; 
 int MMU_UTLB_ADDRESS_ARRAY2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(unsigned long asid, unsigned long page)
{
	FUNC2();
	FUNC0(page, MMU_UTLB_ADDRESS_ARRAY | MMU_PAGE_ASSOC_BIT);
	FUNC0(asid, MMU_UTLB_ADDRESS_ARRAY2 | MMU_PAGE_ASSOC_BIT);
	FUNC0(page, MMU_ITLB_ADDRESS_ARRAY | MMU_PAGE_ASSOC_BIT);
	FUNC0(asid, MMU_ITLB_ADDRESS_ARRAY2 | MMU_PAGE_ASSOC_BIT);
	FUNC1();
}