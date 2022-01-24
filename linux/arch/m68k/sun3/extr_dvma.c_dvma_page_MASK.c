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
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long* ptelist ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(unsigned long kaddr, unsigned long vaddr)
{
	unsigned long pte;
	unsigned long j;
	pte_t ptep;

	j = *(volatile unsigned long *)kaddr;
	*(volatile unsigned long *)kaddr = j;

	ptep = FUNC0(FUNC3(kaddr), PAGE_KERNEL);
	pte = FUNC1(ptep);
//	pr_info("dvma_remap: addr %lx -> %lx pte %08lx\n", kaddr, vaddr, pte);
	if(ptelist[(vaddr & 0xff000) >> PAGE_SHIFT] != pte) {
		FUNC2(vaddr, pte);
		ptelist[(vaddr & 0xff000) >> PAGE_SHIFT] = pte;
	}

	return (vaddr + (kaddr & ~PAGE_MASK));

}