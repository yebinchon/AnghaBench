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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_flags; } ;
typedef  unsigned long resource_size_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  VM_PAT ; 
 int _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct vm_area_struct *vma, pgprot_t *prot,
		    unsigned long pfn, unsigned long addr, unsigned long size)
{
	resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
	enum page_cache_mode pcm;

	/* reserve the whole chunk starting from paddr */
	if (!vma || (addr == vma->vm_start
				&& size == (vma->vm_end - vma->vm_start))) {
		int ret;

		ret = FUNC5(paddr, size, prot, 0);
		if (ret == 0 && vma)
			vma->vm_flags |= VM_PAT;
		return ret;
	}

	if (!FUNC3())
		return 0;

	/*
	 * For anything smaller than the vma size we set prot based on the
	 * lookup.
	 */
	pcm = FUNC2(paddr);

	/* Check memtype for the remaining pages */
	while (size > PAGE_SIZE) {
		size -= PAGE_SIZE;
		paddr += PAGE_SIZE;
		if (pcm != FUNC2(paddr))
			return -EINVAL;
	}

	*prot = FUNC0((FUNC4(*prot) & (~_PAGE_CACHE_MASK)) |
			 FUNC1(pcm));

	return 0;
}