#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned long DEFAULT_MAP_WINDOW ; 
 unsigned long MAP_32BIT ; 
 int PF_RANDOMIZE ; 
 TYPE_1__* current ; 
 unsigned long FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 () ; 
 unsigned long FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(unsigned long addr, unsigned long flags,
		unsigned long *begin, unsigned long *end)
{
	if (!FUNC1() && (flags & MAP_32BIT)) {
		/* This is usually used needed to map code in small
		   model, so it needs to be in the first 31bit. Limit
		   it to that.  This means we need to move the
		   unmapped base down for this case. This can give
		   conflicts with the heap, but we assume that glibc
		   malloc knows how to fall back to mmap. Give it 1GB
		   of playground for now. -AK */
		*begin = 0x40000000;
		*end = 0x80000000;
		if (current->flags & PF_RANDOMIZE) {
			*begin = FUNC2(*begin, 0x02000000);
		}
		return;
	}

	*begin	= FUNC0(1);
	if (FUNC1())
		*end = FUNC3();
	else
		*end = FUNC4(addr > DEFAULT_MAP_WINDOW);
}