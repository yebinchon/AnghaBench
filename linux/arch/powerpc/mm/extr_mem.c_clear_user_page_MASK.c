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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

void FUNC2(void *page, unsigned long vaddr, struct page *pg)
{
	FUNC0(page);

	/*
	 * We shouldn't have to do this, but some versions of glibc
	 * require it (ld.so assumes zero filled pages are icache clean)
	 * - Anton
	 */
	FUNC1(pg);
}