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
 unsigned long FUNC0 (int) ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ fixmap_page_table ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  kmap_prot ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 

void *FUNC9(struct page *page)
{
	int idx, cpu_idx;
	unsigned long vaddr;

	FUNC6();
	FUNC5();
	if (!FUNC1(page))
		return FUNC4(page);

	cpu_idx = FUNC2();
	idx = cpu_idx + KM_TYPE_NR * FUNC8();
	vaddr = FUNC0(idx);

	FUNC7(&init_mm, vaddr, fixmap_page_table + idx,
		   FUNC3(page, kmap_prot));

	return (void *)vaddr;
}