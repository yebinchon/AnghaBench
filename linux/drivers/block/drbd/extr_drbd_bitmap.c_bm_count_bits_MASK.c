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
struct drbd_bitmap {unsigned long bm_bits; int bm_number_of_pages; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 unsigned long BITS_PER_LONG_MASK ; 
 int BITS_PER_PAGE ; 
 int BITS_PER_PAGE_MASK ; 
 int LN2_BPL ; 
 unsigned long* FUNC0 (struct drbd_bitmap*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC6(struct drbd_bitmap *b)
{
	unsigned long *p_addr;
	unsigned long bits = 0;
	unsigned long mask = (1UL << (b->bm_bits & BITS_PER_LONG_MASK)) -1;
	int idx, last_word;

	/* all but last page */
	for (idx = 0; idx < b->bm_number_of_pages - 1; idx++) {
		p_addr = FUNC0(b, idx);
		bits += FUNC2(p_addr, BITS_PER_PAGE);
		FUNC1(p_addr);
		FUNC3();
	}
	/* last (or only) page */
	last_word = ((b->bm_bits - 1) & BITS_PER_PAGE_MASK) >> LN2_BPL;
	p_addr = FUNC0(b, idx);
	bits += FUNC2(p_addr, last_word * BITS_PER_LONG);
	p_addr[last_word] &= FUNC4(mask);
	bits += FUNC5(p_addr[last_word]);
	/* 32bit arch, may have an unused padding long */
	if (BITS_PER_LONG == 32 && (last_word & 1) == 0)
		p_addr[last_word+1] = 0;
	FUNC1(p_addr);
	return bits;
}