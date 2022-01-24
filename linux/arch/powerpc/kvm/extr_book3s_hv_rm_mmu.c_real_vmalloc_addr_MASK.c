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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 void* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(void *x)
{
	unsigned long addr = (unsigned long) x;
	pte_t *p;
	/*
	 * assume we don't have huge pages in vmalloc space...
	 * So don't worry about THP collapse/split. Called
	 * Only in realmode with MSR_EE = 0, hence won't need irq_save/restore.
	 */
	p = FUNC1(addr, NULL);
	if (!p || !FUNC3(*p))
		return NULL;
	addr = (FUNC2(*p) << PAGE_SHIFT) | (addr & ~PAGE_MASK);
	return FUNC0(addr);
}