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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC2(pmd_t * pmd, unsigned long vaddr,
		unsigned long size, unsigned long *paddr_ptr)
{
	unsigned long end;
	unsigned long orig_vaddr = vaddr;

	vaddr &= ~PGDIR_MASK;
	end = vaddr + size;
	if (end > PGDIR_SIZE)
		end = PGDIR_SIZE;
	do {
		pte_t * pte = FUNC1(pmd, vaddr);
		if (!pte)
			return -ENOMEM;
		if (FUNC0(pte, orig_vaddr, end - vaddr, paddr_ptr))
			return -ENOMEM;
		vaddr = (vaddr + PMD_SIZE) & PMD_MASK;
		orig_vaddr += PMD_SIZE;
		pmd++;
	} while (vaddr < end);
	return 0;
}