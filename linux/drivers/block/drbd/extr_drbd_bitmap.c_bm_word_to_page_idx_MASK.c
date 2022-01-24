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
struct drbd_bitmap {unsigned int bm_number_of_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LN2_BPL ; 
 int PAGE_SHIFT ; 

__attribute__((used)) static unsigned int FUNC1(struct drbd_bitmap *b, unsigned long long_nr)
{
	/* page_nr = (word*sizeof(long)) >> PAGE_SHIFT; */
	unsigned int page_nr = long_nr >> (PAGE_SHIFT - LN2_BPL + 3);
	FUNC0(page_nr >= b->bm_number_of_pages);
	return page_nr;
}