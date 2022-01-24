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
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int COPYPAGE_V6_FROM ; 
 unsigned int COPYPAGE_V6_TO ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v6_lock ; 

__attribute__((used)) static void FUNC11(struct page *to,
	struct page *from, unsigned long vaddr, struct vm_area_struct *vma)
{
	unsigned int offset = FUNC0(vaddr);
	unsigned long kfrom, kto;

	if (!FUNC10(PG_dcache_clean, &from->flags))
		FUNC1(FUNC6(from), from);

	/* FIXME: not highmem safe */
	FUNC3(FUNC5(to));

	/*
	 * Now copy the page using the same cache colour as the
	 * pages ultimate destination.
	 */
	FUNC7(&v6_lock);

	kfrom = COPYPAGE_V6_FROM + (offset << PAGE_SHIFT);
	kto   = COPYPAGE_V6_TO + (offset << PAGE_SHIFT);

	FUNC9(kfrom, FUNC4(from, PAGE_KERNEL));
	FUNC9(kto, FUNC4(to, PAGE_KERNEL));

	FUNC2((void *)kto, (void *)kfrom);

	FUNC8(&v6_lock);
}