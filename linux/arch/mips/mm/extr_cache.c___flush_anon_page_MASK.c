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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 void* FUNC2 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

void FUNC7(struct page *page, unsigned long vmaddr)
{
	unsigned long addr = (unsigned long) FUNC4(page);

	if (FUNC6(addr, vmaddr)) {
		if (FUNC5(page) && !FUNC0(page)) {
			void *kaddr;

			kaddr = FUNC2(page, vmaddr);
			FUNC1((unsigned long)kaddr);
			FUNC3();
		} else
			FUNC1(addr);
	}
}