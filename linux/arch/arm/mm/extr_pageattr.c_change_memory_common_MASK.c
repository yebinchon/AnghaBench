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
struct page_change_data {void* clear_mask; void* set_mask; } ;
typedef  void* pgprot_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MODULES_END ; 
 int /*<<< orphan*/  MODULES_VADDR ; 
 int FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VMALLOC_END ; 
 int /*<<< orphan*/  VMALLOC_START ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,struct page_change_data*) ; 
 int /*<<< orphan*/  change_page_range ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_mm ; 

__attribute__((used)) static int FUNC5(unsigned long addr, int numpages,
				pgprot_t set_mask, pgprot_t clear_mask)
{
	unsigned long start = addr & PAGE_MASK;
	unsigned long end = FUNC0(addr) + numpages * PAGE_SIZE;
	unsigned long size = end - start;
	int ret;
	struct page_change_data data;

	FUNC1(start != addr);

	if (!size)
		return 0;

	if (!FUNC4(start, size, MODULES_VADDR, MODULES_END) &&
	    !FUNC4(start, size, VMALLOC_START, VMALLOC_END))
		return -EINVAL;

	data.set_mask = set_mask;
	data.clear_mask = clear_mask;

	ret = FUNC2(&init_mm, start, size, change_page_range,
					&data);

	FUNC3(start, end);
	return ret;
}