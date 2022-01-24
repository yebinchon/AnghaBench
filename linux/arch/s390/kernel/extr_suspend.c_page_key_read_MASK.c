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
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 struct page* FUNC3 (unsigned long) ; 

void FUNC4(unsigned long *pfn)
{
	struct page *page;
	unsigned long addr;
	unsigned char key;

	page = FUNC3(*pfn);
	addr = (unsigned long) FUNC1(page);
	key = (unsigned char) FUNC2(addr) & 0x7f;
	if (FUNC0(page))
		key |= 0x80;
	*(unsigned char *) pfn = key;
}