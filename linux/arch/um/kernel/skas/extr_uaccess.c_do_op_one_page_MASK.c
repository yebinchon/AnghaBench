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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long,int) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned long,int,void*) ; 

__attribute__((used)) static int FUNC8(unsigned long addr, int len, int is_write,
		 int (*op)(unsigned long addr, int len, void *arg), void *arg)
{
	struct page *page;
	pte_t *pte;
	int n;

	pte = FUNC2(addr, is_write);
	if (pte == NULL)
		return -1;

	page = FUNC6(*pte);
#ifdef CONFIG_64BIT
	pagefault_disable();
	addr = (unsigned long) page_address(page) +
		(addr & ~PAGE_MASK);
#else
	addr = (unsigned long) FUNC0(page) +
		(addr & ~PAGE_MASK);
#endif
	n = (*op)(addr, len, arg);

#ifdef CONFIG_64BIT
	pagefault_enable();
#else
	FUNC1((void *)addr);
#endif

	return n;
}