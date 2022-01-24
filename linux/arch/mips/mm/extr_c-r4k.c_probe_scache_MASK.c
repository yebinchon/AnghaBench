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
struct TYPE_2__ {int linesz; int ways; scalar_t__ waybit; } ;
struct cpuinfo_mips {TYPE_1__ scache; } ;

/* Variables and functions */
 unsigned int CONF_SC ; 
 int /*<<< orphan*/  Index_Load_Tag_SD ; 
 int /*<<< orphan*/  Index_Store_Tag_D ; 
 int /*<<< orphan*/  Index_Store_Tag_I ; 
 int /*<<< orphan*/  Index_Store_Tag_SD ; 
 unsigned int R4K_CONF_SB ; 
 int /*<<< orphan*/  _stext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 struct cpuinfo_mips current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long scache_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	unsigned long flags, addr, begin, end, pow2;
	unsigned int config = FUNC3();
	struct cpuinfo_mips *c = &current_cpu_data;

	if (config & CONF_SC)
		return 0;

	begin = (unsigned long) &_stext;
	begin &= ~((4 * 1024 * 1024) - 1);
	end = begin + (4 * 1024 * 1024);

	/*
	 * This is such a bitch, you'd think they would make it easy to do
	 * this.  Away you daemons of stupidity!
	 */
	FUNC2(flags);

	/* Fill each size-multiple cache line with a valid tag. */
	pow2 = (64 * 1024);
	for (addr = begin; addr < end; addr = (begin + pow2)) {
		unsigned long *p = (unsigned long *) addr;
		__asm__ __volatile__("nop" : : "r" (*p)); /* whee... */
		pow2 <<= 1;
	}

	/* Load first line with zero (therefore invalid) tag. */
	FUNC6(0);
	FUNC5(0);
	__asm__ __volatile__("nop; nop; nop; nop;"); /* avoid the hazard */
	FUNC0(Index_Store_Tag_I, begin);
	FUNC0(Index_Store_Tag_D, begin);
	FUNC0(Index_Store_Tag_SD, begin);

	/* Now search for the wrap around point. */
	pow2 = (128 * 1024);
	for (addr = begin + (128 * 1024); addr < end; addr = begin + pow2) {
		FUNC0(Index_Load_Tag_SD, addr);
		__asm__ __volatile__("nop; nop; nop; nop;"); /* hazard... */
		if (!FUNC4())
			break;
		pow2 <<= 1;
	}
	FUNC1(flags);
	addr -= begin;

	scache_size = addr;
	c->scache.linesz = 16 << ((config & R4K_CONF_SB) >> 22);
	c->scache.ways = 1;
	c->scache.waybit = 0;		/* does not matter */

	return 1;
}