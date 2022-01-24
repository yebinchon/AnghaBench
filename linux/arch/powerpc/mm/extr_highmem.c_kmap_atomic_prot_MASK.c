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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_HIGHMEM ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC5 () ; 
 int /*<<< orphan*/ * kmap_pte ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 

void *FUNC13(struct page *page, pgprot_t prot)
{
	unsigned long vaddr;
	int idx, type;

	FUNC10();
	FUNC9();
	if (!FUNC1(page))
		return FUNC8(page);

	type = FUNC5();
	idx = type + KM_TYPE_NR*FUNC12();
	vaddr = FUNC3(FIX_KMAP_BEGIN + idx);
	FUNC2(FUNC0(CONFIG_DEBUG_HIGHMEM) && !FUNC11(*(kmap_pte - idx)));
	FUNC4(&init_mm, vaddr, kmap_pte-idx, FUNC7(page, prot), 1);
	FUNC6(NULL, vaddr);

	return (void*) vaddr;
}