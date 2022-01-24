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

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int _PAGE_NX ; 
 scalar_t__ __end_rodata ; 
 int __supported_pte_mask ; 
 int /*<<< orphan*/  _text ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int kernel_set_to_readonly ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

void FUNC7(void)
{
	unsigned long start = FUNC0(_text);
	unsigned long size = (unsigned long)__end_rodata - start;

	FUNC4(FUNC6(start), size >> PAGE_SHIFT);
	FUNC3("Write protecting kernel text and read-only data: %luk\n",
		size >> 10);

	kernel_set_to_readonly = 1;

#ifdef CONFIG_CPA_DEBUG
	pr_info("Testing CPA: Reverting %lx-%lx\n", start, start + size);
	set_pages_rw(virt_to_page(start), size >> PAGE_SHIFT);

	pr_info("Testing CPA: write protecting again\n");
	set_pages_ro(virt_to_page(start), size >> PAGE_SHIFT);
#endif
	FUNC2();
	if (__supported_pte_mask & _PAGE_NX)
		FUNC1();
}