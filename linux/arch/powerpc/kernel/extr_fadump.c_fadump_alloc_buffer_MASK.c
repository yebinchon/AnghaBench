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
 int GFP_KERNEL ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_SIZE ; 
 int __GFP_ZERO ; 
 void* FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(unsigned long size)
{
	unsigned long count, i;
	struct page *page;
	void *vaddr;

	vaddr = FUNC1(size, GFP_KERNEL | __GFP_ZERO);
	if (!vaddr)
		return NULL;

	count = FUNC0(size) / PAGE_SIZE;
	page = FUNC3(vaddr);
	for (i = 0; i < count; i++)
		FUNC2(page + i);
	return vaddr;
}