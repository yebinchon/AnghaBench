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
typedef  unsigned long u32 ;
struct revmap_entry {int dummy; } ;
struct page {int dummy; } ;
struct kvm_hpt_info {unsigned long order; unsigned long virt; int cma; struct revmap_entry* rev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PPC_MAX_HPT_ORDER ; 
 unsigned long PPC_MIN_HPT_ORDER ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 int __GFP_ZERO ; 
 unsigned long FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct revmap_entry* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct kvm_hpt_info *info, u32 order)
{
	unsigned long hpt = 0;
	int cma = 0;
	struct page *page = NULL;
	struct revmap_entry *rev;
	unsigned long npte;

	if ((order < PPC_MIN_HPT_ORDER) || (order > PPC_MAX_HPT_ORDER))
		return -EINVAL;

	page = FUNC3(1ul << (order - PAGE_SHIFT));
	if (page) {
		hpt = (unsigned long)FUNC7(FUNC6(page));
		FUNC5((void *)hpt, 0, (1ul << order));
		cma = 1;
	}

	if (!hpt)
		hpt = FUNC0(GFP_KERNEL|__GFP_ZERO|__GFP_RETRY_MAYFAIL
				       |__GFP_NOWARN, order - PAGE_SHIFT);

	if (!hpt)
		return -ENOMEM;

	/* HPTEs are 2**4 bytes long */
	npte = 1ul << (order - 4);

	/* Allocate reverse map array */
	rev = FUNC8(FUNC1(npte, sizeof(struct revmap_entry)));
	if (!rev) {
		if (cma)
			FUNC4(page, 1 << (order - PAGE_SHIFT));
		else
			FUNC2(hpt, order - PAGE_SHIFT);
		return -ENOMEM;
	}

	info->order = order;
	info->virt = hpt;
	info->cma = cma;
	info->rev = rev;

	return 0;
}