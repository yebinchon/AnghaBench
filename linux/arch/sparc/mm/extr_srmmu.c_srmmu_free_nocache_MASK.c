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
 int /*<<< orphan*/  FUNC0 () ; 
 int SRMMU_NOCACHE_BITMAP_SHIFT ; 
 unsigned long SRMMU_NOCACHE_VADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,...) ; 
 unsigned long srmmu_nocache_end ; 
 int /*<<< orphan*/  srmmu_nocache_map ; 

void FUNC4(void *addr, int size)
{
	unsigned long vaddr;
	int offset;

	vaddr = (unsigned long)addr;
	if (vaddr < SRMMU_NOCACHE_VADDR) {
		FUNC3("Vaddr %lx is smaller than nocache base 0x%lx\n",
		    vaddr, (unsigned long)SRMMU_NOCACHE_VADDR);
		FUNC0();
	}
	if (vaddr + size > srmmu_nocache_end) {
		FUNC3("Vaddr %lx is bigger than nocache end 0x%lx\n",
		    vaddr, srmmu_nocache_end);
		FUNC0();
	}
	if (!FUNC2(size)) {
		FUNC3("Size 0x%x is not a power of 2\n", size);
		FUNC0();
	}
	if (size < SRMMU_NOCACHE_BITMAP_SHIFT) {
		FUNC3("Size 0x%x is too small\n", size);
		FUNC0();
	}
	if (vaddr & (size - 1)) {
		FUNC3("Vaddr %lx is not aligned to size 0x%x\n", vaddr, size);
		FUNC0();
	}

	offset = (vaddr - SRMMU_NOCACHE_VADDR) >> SRMMU_NOCACHE_BITMAP_SHIFT;
	size = size >> SRMMU_NOCACHE_BITMAP_SHIFT;

	FUNC1(&srmmu_nocache_map, offset, size);
}