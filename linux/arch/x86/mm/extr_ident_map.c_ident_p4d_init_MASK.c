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
struct x86_mapping_info {int kernpg_flag; int /*<<< orphan*/  context; scalar_t__ (* alloc_pgt_page ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long P4D_MASK ; 
 unsigned long P4D_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct x86_mapping_info*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct x86_mapping_info *info, p4d_t *p4d_page,
			  unsigned long addr, unsigned long end)
{
	unsigned long next;

	for (; addr < end; addr = next) {
		p4d_t *p4d = p4d_page + FUNC3(addr);
		pud_t *pud;

		next = (addr & P4D_MASK) + P4D_SIZE;
		if (next > end)
			next = end;

		if (FUNC4(*p4d)) {
			pud = FUNC5(p4d, 0);
			FUNC2(info, pud, addr, next);
			continue;
		}
		pud = (pud_t *)info->alloc_pgt_page(info->context);
		if (!pud)
			return -ENOMEM;
		FUNC2(info, pud, addr, next);
		FUNC6(p4d, FUNC0(FUNC1(pud) | info->kernpg_flag));
	}

	return 0;
}