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
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 

__attribute__((used)) static inline void FUNC3(unsigned long start, unsigned long end,
				    unsigned long pid, unsigned long page_size,
				    unsigned long psize)
{
	unsigned long addr;
	unsigned long ap = FUNC2(psize);

	for (addr = start; addr < end; addr += page_size)
		FUNC0(addr, pid, ap, RIC_FLUSH_TLB);

	FUNC1(addr - page_size, pid, ap);
}