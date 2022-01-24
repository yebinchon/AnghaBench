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
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FIX_KMAP_BEGIN ; 
 int /*<<< orphan*/  PAGE_KERNEL_EXEC ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kmap_pte ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *FUNC13(struct page *page)
{
	enum fixed_addresses idx;
	unsigned long vaddr;

	FUNC10();
	FUNC9();
	if (!FUNC2(page))
		return FUNC7(page);

	idx = FUNC5(FUNC4(),
		       FUNC1(FUNC8(page)));
	vaddr = FUNC3(FIX_KMAP_BEGIN + idx);
#ifdef CONFIG_DEBUG_HIGHMEM
	BUG_ON(!pte_none(*(kmap_pte + idx)));
#endif
	FUNC12(kmap_pte + idx, FUNC6(page, PAGE_KERNEL_EXEC));

	return (void *)vaddr;
}