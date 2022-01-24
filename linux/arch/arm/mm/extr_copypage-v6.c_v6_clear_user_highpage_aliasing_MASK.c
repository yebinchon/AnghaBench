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
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long COPYPAGE_V6_TO ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v6_lock ; 

__attribute__((used)) static void FUNC8(struct page *page, unsigned long vaddr)
{
	unsigned long to = COPYPAGE_V6_TO + (FUNC0(vaddr) << PAGE_SHIFT);

	/* FIXME: not highmem safe */
	FUNC2(FUNC4(page));

	/*
	 * Now clear the page using the same cache colour as
	 * the pages ultimate destination.
	 */
	FUNC5(&v6_lock);

	FUNC7(to, FUNC3(page, PAGE_KERNEL));
	FUNC1((void *)to);

	FUNC6(&v6_lock);
}