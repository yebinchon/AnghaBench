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
 unsigned long CONFIG_CACHELINE_SIZE ; 
 int /*<<< orphan*/  Hit_Invalidate_I ; 
 int /*<<< orphan*/  Hit_Writeback_Inv_D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,unsigned long,unsigned long) ; 

void FUNC2(unsigned long start_addr, unsigned long size)
{
	unsigned long lsize = CONFIG_CACHELINE_SIZE;
	unsigned long addr = start_addr & ~(lsize - 1);
	unsigned long aend = (start_addr + size + (lsize - 1)) & ~(lsize - 1);

	FUNC1("blasting from 0x%08x to 0x%08x (0x%08x - 0x%08x)\n", start_addr, size, addr, aend);

	while (1) {
		FUNC0(Hit_Writeback_Inv_D, addr);
		FUNC0(Hit_Invalidate_I, addr);
		if (addr == aend)
			break;
		addr += lsize;
	}
}