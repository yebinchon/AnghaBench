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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EFI_MEMORY_UC ; 
 int EFI_MEMORY_WB ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 

int
FUNC1 (phys_addr_t phys_addr, unsigned long size)
{
	u64 attr;

	/*
	 * /dev/mem reads and writes use copy_to_user(), which implicitly
	 * uses a granule-sized kernel identity mapping.  It's really
	 * only safe to do this for regions in kern_memmap.  For more
	 * details, see Documentation/ia64/aliasing.rst.
	 */
	attr = FUNC0(phys_addr, size);
	if (attr & EFI_MEMORY_WB || attr & EFI_MEMORY_UC)
		return 1;
	return 0;
}