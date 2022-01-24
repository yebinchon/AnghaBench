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
struct cpa_data {unsigned long* vaddr; int numpages; int flags; int force_split; scalar_t__ curpage; void* mask_clr; void* mask_set; struct page** pages; } ;
typedef  void* pgprot_t ;
typedef  int /*<<< orphan*/  cpa ;

/* Variables and functions */
 int CPA_ARRAY ; 
 int CPA_FLUSHTLB ; 
 int CPA_NO_CHECK_ALIAS ; 
 int CPA_PAGES_ARRAY ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _PAGE_NX ; 
 int FUNC1 (struct cpa_data*,int) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpa_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cpa_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(unsigned long *addr, int numpages,
				    pgprot_t mask_set, pgprot_t mask_clr,
				    int force_split, int in_flag,
				    struct page **pages)
{
	struct cpa_data cpa;
	int ret, cache, checkalias;

	FUNC6(&cpa, 0, sizeof(cpa));

	/*
	 * Check, if we are requested to set a not supported
	 * feature.  Clearing non-supported features is OK.
	 */
	mask_set = FUNC2(mask_set);

	if (!FUNC8(mask_set) && !FUNC8(mask_clr) && !force_split)
		return 0;

	/* Ensure we are PAGE_SIZE aligned */
	if (in_flag & CPA_ARRAY) {
		int i;
		for (i = 0; i < numpages; i++) {
			if (addr[i] & ~PAGE_MASK) {
				addr[i] &= PAGE_MASK;
				FUNC0(1);
			}
		}
	} else if (!(in_flag & CPA_PAGES_ARRAY)) {
		/*
		 * in_flag of CPA_PAGES_ARRAY implies it is aligned.
		 * No need to check in that case
		 */
		if (*addr & ~PAGE_MASK) {
			*addr &= PAGE_MASK;
			/*
			 * People should not be passing in unaligned addresses:
			 */
			FUNC0(1);
		}
	}

	/* Must avoid aliasing mappings in the highmem code */
	FUNC5();

	FUNC9();

	cpa.vaddr = addr;
	cpa.pages = pages;
	cpa.numpages = numpages;
	cpa.mask_set = mask_set;
	cpa.mask_clr = mask_clr;
	cpa.flags = 0;
	cpa.curpage = 0;
	cpa.force_split = force_split;

	if (in_flag & (CPA_ARRAY | CPA_PAGES_ARRAY))
		cpa.flags |= in_flag;

	/* No alias checking for _NX bit modifications */
	checkalias = (FUNC8(mask_set) | FUNC8(mask_clr)) != _PAGE_NX;
	/* Has caller explicitly disabled alias checking? */
	if (in_flag & CPA_NO_CHECK_ALIAS)
		checkalias = 0;

	ret = FUNC1(&cpa, checkalias);

	/*
	 * Check whether we really changed something:
	 */
	if (!(cpa.flags & CPA_FLUSHTLB))
		goto out;

	/*
	 * No need to flush, when we did not set any of the caching
	 * attributes:
	 */
	cache = !!FUNC7(mask_set);

	/*
	 * On error; flush everything to be sure.
	 */
	if (ret) {
		FUNC4(cache);
		goto out;
	}

	FUNC3(&cpa, cache);
out:
	return ret;
}