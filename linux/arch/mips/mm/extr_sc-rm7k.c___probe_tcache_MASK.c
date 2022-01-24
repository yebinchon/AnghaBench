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
 int /*<<< orphan*/  Index_Load_Tag_T ; 
 int /*<<< orphan*/  Index_Store_Tag_T ; 
 int /*<<< orphan*/  RM7K_CONF_TE ; 
 int /*<<< orphan*/  _stext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long tcache_size ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned long flags, addr, begin, end, pow2;

	begin = (unsigned long) &_stext;
	begin  &= ~((8 * 1024 * 1024) - 1);
	end = begin + (8 * 1024 * 1024);

	FUNC3(flags);

	FUNC5(RM7K_CONF_TE);

	/* Fill size-multiple lines with a valid tag */
	pow2 = (256 * 1024);
	for (addr = begin; addr <= end; addr = (begin + pow2)) {
		unsigned long *p = (unsigned long *) addr;
		__asm__ __volatile__("nop" : : "r" (*p));
		pow2 <<= 1;
	}

	/* Load first line with a 0 tag, to check after */
	FUNC7(0);
	FUNC6(0);
	FUNC0(Index_Store_Tag_T, begin);

	/* Look for the wrap-around */
	pow2 = (512 * 1024);
	for (addr = begin + (512 * 1024); addr <= end; addr = begin + pow2) {
		FUNC0(Index_Load_Tag_T, addr);
		if (!FUNC4())
			break;
		pow2 <<= 1;
	}

	addr -= begin;
	tcache_size = addr;

	FUNC1(RM7K_CONF_TE);

	FUNC2(flags);
}