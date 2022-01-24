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
typedef  int u64 ;

/* Variables and functions */
 int EFI_MEMORY_UC ; 
 int EFI_MEMORY_WB ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

int
FUNC2 (unsigned long pfn, unsigned long size)
{
	unsigned long phys_addr = pfn << PAGE_SHIFT;
	u64 attr;

	attr = FUNC0(phys_addr, size);

	/*
	 * /dev/mem mmap uses normal user pages, so we don't need the entire
	 * granule, but the entire region we're mapping must support the same
	 * attribute.
	 */
	if (attr & EFI_MEMORY_WB || attr & EFI_MEMORY_UC)
		return 1;

	/*
	 * Intel firmware doesn't tell us about all the MMIO regions, so
	 * in general we have to allow mmap requests.  But if EFI *does*
	 * tell us about anything inside this region, we should deny it.
	 * The user can always map a smaller region to avoid the overlap.
	 */
	if (FUNC1(phys_addr, size))
		return 0;

	return 1;
}