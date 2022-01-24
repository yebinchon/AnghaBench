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
struct x86_mapping_info {unsigned long offset; unsigned long page_flag; unsigned long kernpg_flag; int /*<<< orphan*/  context; scalar_t__ (* alloc_pgt_page ) (int /*<<< orphan*/ ) ;scalar_t__ direct_gbpages; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PUD_MASK ; 
 unsigned long PUD_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct x86_mapping_info*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct x86_mapping_info *info, pud_t *pud_page,
			  unsigned long addr, unsigned long end)
{
	unsigned long next;

	for (; addr < end; addr = next) {
		pud_t *pud = pud_page + FUNC4(addr);
		pmd_t *pmd;

		next = (addr & PUD_MASK) + PUD_SIZE;
		if (next > end)
			next = end;

		if (info->direct_gbpages) {
			pud_t pudval;

			if (FUNC5(*pud))
				continue;

			addr &= PUD_MASK;
			pudval = FUNC1((addr - info->offset) | info->page_flag);
			FUNC6(pud, pudval);
			continue;
		}

		if (FUNC5(*pud)) {
			pmd = FUNC3(pud, 0);
			FUNC2(info, pmd, addr, next);
			continue;
		}
		pmd = (pmd_t *)info->alloc_pgt_page(info->context);
		if (!pmd)
			return -ENOMEM;
		FUNC2(info, pmd, addr, next);
		FUNC6(pud, FUNC1(FUNC0(pmd) | info->kernpg_flag));
	}

	return 0;
}