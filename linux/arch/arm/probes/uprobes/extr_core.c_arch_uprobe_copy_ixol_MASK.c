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
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned long,void*,unsigned long) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct page *page, unsigned long vaddr,
			   void *src, unsigned long len)
{
	void *xol_page_kaddr = FUNC1(page);
	void *dst = xol_page_kaddr + (vaddr & ~PAGE_MASK);

	FUNC4();

	/* Initialize the slot */
	FUNC3(dst, src, len);

	/* flush caches (dcache/icache) */
	FUNC0(page, vaddr, dst, len);

	FUNC5();

	FUNC2(xol_page_kaddr);
}