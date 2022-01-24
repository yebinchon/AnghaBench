#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long* pte_t ;
struct TYPE_3__ {unsigned long max_pfn; int /*<<< orphan*/  p2m_generation; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 TYPE_2__* HYPERVISOR_shared_info ; 
 unsigned long MAX_P2M_PFN ; 
 int P2M_PER_PAGE ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SIZE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int PG_LEVEL_4K ; 
 unsigned long* FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 unsigned long* FUNC4 () ; 
 unsigned long** FUNC5 (unsigned long,unsigned long**) ; 
 unsigned long FUNC6 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*) ; 
 unsigned long** FUNC8 (unsigned long,unsigned int*) ; 
 unsigned long* FUNC9 (unsigned long) ; 
 unsigned long* p2m_identity ; 
 unsigned long** p2m_identity_pte ; 
 int /*<<< orphan*/  FUNC10 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*,unsigned long) ; 
 size_t FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long*,unsigned long*) ; 
 unsigned long* p2m_mid_missing_mfn ; 
 unsigned long* p2m_missing ; 
 unsigned long** p2m_missing_pte ; 
 unsigned int FUNC14 (unsigned long) ; 
 unsigned long* p2m_top_mfn ; 
 unsigned long** p2m_top_mfn_p ; 
 int /*<<< orphan*/  p2m_update_lock ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC20 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ xen_p2m_addr ; 
 unsigned long xen_p2m_last_pfn ; 

int FUNC22(unsigned long pfn)
{
	unsigned topidx;
	unsigned long *top_mfn_p, *mid_mfn;
	pte_t *ptep, *pte_pg;
	unsigned int level;
	unsigned long flags;
	unsigned long addr = (unsigned long)(xen_p2m_addr + pfn);
	unsigned long p2m_pfn;

	ptep = FUNC8(addr, &level);
	FUNC0(!ptep || level != PG_LEVEL_4K);
	pte_pg = (pte_t *)((unsigned long)ptep & ~(PAGE_SIZE - 1));

	if (pte_pg == p2m_missing_pte || pte_pg == p2m_identity_pte) {
		/* PMD level is missing, allocate a new one */
		ptep = FUNC5(addr, pte_pg);
		if (!ptep)
			return -ENOMEM;
	}

	if (p2m_top_mfn && pfn < MAX_P2M_PFN) {
		topidx = FUNC14(pfn);
		top_mfn_p = &p2m_top_mfn[topidx];
		mid_mfn = FUNC2(p2m_top_mfn_p[topidx]);

		FUNC0(FUNC20(mid_mfn) != *top_mfn_p);

		if (mid_mfn == p2m_mid_missing_mfn) {
			/* Separately check the mid mfn level */
			unsigned long missing_mfn;
			unsigned long mid_mfn_mfn;
			unsigned long old_mfn;

			mid_mfn = FUNC4();
			if (!mid_mfn)
				return -ENOMEM;

			FUNC13(mid_mfn, p2m_missing);

			missing_mfn = FUNC20(p2m_mid_missing_mfn);
			mid_mfn_mfn = FUNC20(mid_mfn);
			old_mfn = FUNC6(top_mfn_p, missing_mfn, mid_mfn_mfn);
			if (old_mfn != missing_mfn) {
				FUNC7(mid_mfn);
				mid_mfn = FUNC9(old_mfn);
			} else {
				p2m_top_mfn_p[topidx] = mid_mfn;
			}
		}
	} else {
		mid_mfn = NULL;
	}

	p2m_pfn = FUNC16(FUNC2(*ptep));
	if (p2m_pfn == FUNC1(FUNC3(p2m_identity)) ||
	    p2m_pfn == FUNC1(FUNC3(p2m_missing))) {
		/* p2m leaf page is missing */
		unsigned long *p2m;

		p2m = FUNC4();
		if (!p2m)
			return -ENOMEM;

		if (p2m_pfn == FUNC1(FUNC3(p2m_missing)))
			FUNC10(p2m);
		else
			FUNC11(p2m, pfn & ~(P2M_PER_PAGE - 1));

		FUNC18(&p2m_update_lock, flags);

		if (FUNC16(*ptep) == p2m_pfn) {
			HYPERVISOR_shared_info->arch.p2m_generation++;
			FUNC21(); /* Tools are synchronizing via p2m_generation. */
			FUNC17(ptep,
				FUNC15(FUNC1(FUNC3(p2m)), PAGE_KERNEL));
			FUNC21(); /* Tools are synchronizing via p2m_generation. */
			HYPERVISOR_shared_info->arch.p2m_generation++;
			if (mid_mfn)
				mid_mfn[FUNC12(pfn)] = FUNC20(p2m);
			p2m = NULL;
		}

		FUNC19(&p2m_update_lock, flags);

		if (p2m)
			FUNC7(p2m);
	}

	/* Expanded the p2m? */
	if (pfn > xen_p2m_last_pfn) {
		xen_p2m_last_pfn = pfn;
		HYPERVISOR_shared_info->arch.max_pfn = xen_p2m_last_pfn;
	}

	return 0;
}