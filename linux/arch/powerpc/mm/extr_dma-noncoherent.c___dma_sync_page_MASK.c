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
typedef  unsigned int phys_addr_t ;

/* Variables and functions */
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned int,size_t,int) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct page* FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(phys_addr_t paddr, size_t size, int dir)
{
	struct page *page = FUNC3(paddr >> PAGE_SHIFT);
	unsigned offset = paddr & ~PAGE_MASK;

#ifdef CONFIG_HIGHMEM
	__dma_sync_page_highmem(page, offset, size, dir);
#else
	unsigned long start = (unsigned long)FUNC2(page) + offset;
	FUNC0((void *)start, size, dir);
#endif
}