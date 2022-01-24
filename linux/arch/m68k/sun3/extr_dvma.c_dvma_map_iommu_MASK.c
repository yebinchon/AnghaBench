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
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

int FUNC2(unsigned long kaddr, unsigned long baddr,
			      int len)
{

	unsigned long end;
	unsigned long vaddr;

	vaddr = FUNC0(baddr);

	end = vaddr + len;

	while(vaddr < end) {
		FUNC1(kaddr, vaddr);
		kaddr += PAGE_SIZE;
		vaddr += PAGE_SIZE;
	}

	return 0;

}