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
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PTI_LEVEL_KERNEL_IMAGE ; 
 scalar_t__ __end_rodata_aligned ; 
 scalar_t__ __stop___ex_table ; 
 unsigned long _text ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(void)
{
	/*
	 * rodata is part of the kernel image and is normally
	 * readable on the filesystem or on the web.  But, do not
	 * clone the areas past rodata, they might contain secrets.
	 */
	unsigned long start = FUNC0(_text);
	unsigned long end_clone  = (unsigned long)__end_rodata_aligned;
	unsigned long end_global = FUNC0((unsigned long)__stop___ex_table);

	if (!FUNC3())
		return;

	FUNC1("mapping partial kernel image into user address space\n");

	/*
	 * Note that this will undo _some_ of the work that
	 * pti_set_kernel_image_nonglobal() did to clear the
	 * global bit.
	 */
	FUNC2(start, end_clone, PTI_LEVEL_KERNEL_IMAGE);

	/*
	 * pti_clone_pgtable() will set the global bit in any PMDs
	 * that it clones, but we also need to get any PTEs in
	 * the last level for areas that are not huge-page-aligned.
	 */

	/* Set the global bit for normal non-__init kernel text: */
	FUNC4(start, (end_global - start) >> PAGE_SHIFT);
}