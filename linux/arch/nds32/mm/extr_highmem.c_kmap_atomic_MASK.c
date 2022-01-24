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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  NDS32_SR_TLB_VPN ; 
 unsigned long PAGE_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 () ; 
 void* FUNC7 (struct page*) ; 
 unsigned long FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 () ; 

void *FUNC15(struct page *page)
{
	unsigned int idx;
	unsigned long vaddr, pte;
	int type;
	pte_t *ptep;

	FUNC11();
	FUNC9();
	if (!FUNC0(page))
		return FUNC7(page);

	type = FUNC6();

	idx = type + KM_TYPE_NR * FUNC14();
	vaddr = FUNC1(FIX_KMAP_BEGIN + idx);
	pte = (FUNC8(page) << PAGE_SHIFT) | (PAGE_KERNEL);
	ptep = FUNC12(FUNC10(vaddr), vaddr);
	FUNC13(ptep, pte);

	FUNC4(vaddr);
	FUNC3(vaddr, NDS32_SR_TLB_VPN);
	FUNC5(pte);
	FUNC2();
	return (void *)vaddr;
}