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
 unsigned long PAGE_SHIFT ; 
 struct page* FUNC0 (unsigned long) ; 
 int FUNC1 (struct page*,unsigned int) ; 
 int FUNC2 (struct page*,unsigned int) ; 

__attribute__((used)) static int
FUNC3(unsigned long start, unsigned long end, bool protect)
{
	struct page *page;
	unsigned int nr_pages;

	/*
	 * For physical range: [start, end]. We must skip the unassigned
	 * crashk resource with zero-valued "end" member.
	 */
	if (!end || start > end)
		return 0;

	page = FUNC0(start >> PAGE_SHIFT);
	nr_pages = (end >> PAGE_SHIFT) - (start >> PAGE_SHIFT) + 1;
	if (protect)
		return FUNC1(page, nr_pages);
	else
		return FUNC2(page, nr_pages);
}