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
struct x86_mapping_info {unsigned long offset; int kernpg_flag; int /*<<< orphan*/  context; scalar_t__ (* alloc_pgt_page ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 int _KERNPG_TABLE ; 
 int __default_kernel_pte_mask ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct x86_mapping_info*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct x86_mapping_info *info, pgd_t *pgd_page,
			      unsigned long pstart, unsigned long pend)
{
	unsigned long addr = pstart + info->offset;
	unsigned long end = pend + info->offset;
	unsigned long next;
	int result;

	/* Set the default pagetable flags if not supplied */
	if (!info->kernpg_flag)
		info->kernpg_flag = _KERNPG_TABLE;

	/* Filter out unsupported __PAGE_KERNEL_* bits: */
	info->kernpg_flag &= __default_kernel_pte_mask;

	for (; addr < end; addr = next) {
		pgd_t *pgd = pgd_page + FUNC4(addr);
		p4d_t *p4d;

		next = (addr & PGDIR_MASK) + PGDIR_SIZE;
		if (next > end)
			next = end;

		if (FUNC5(*pgd)) {
			p4d = FUNC3(pgd, 0);
			result = FUNC2(info, p4d, addr, next);
			if (result)
				return result;
			continue;
		}

		p4d = (p4d_t *)info->alloc_pgt_page(info->context);
		if (!p4d)
			return -ENOMEM;
		result = FUNC2(info, p4d, addr, next);
		if (result)
			return result;
		if (FUNC6()) {
			FUNC8(pgd, FUNC1(FUNC0(p4d) | info->kernpg_flag));
		} else {
			/*
			 * With p4d folded, pgd is equal to p4d.
			 * The pgd entry has to point to the pud page table in this case.
			 */
			pud_t *pud = FUNC7(p4d, 0);
			FUNC8(pgd, FUNC1(FUNC0(pud) | info->kernpg_flag));
		}
	}

	return 0;
}