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
struct rmap_nested {int dummy; } ;
struct kvm {int /*<<< orphan*/  mm; int /*<<< orphan*/  mmu_lock; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 unsigned long PMD_MASK ; 
 int /*<<< orphan*/  PMD_SHIFT ; 
 int PTE_BITS_MUST_MATCH ; 
 unsigned long PUD_MASK ; 
 int /*<<< orphan*/  PUD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,unsigned long*,struct rmap_nested**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,int /*<<< orphan*/ *,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,int /*<<< orphan*/ *,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC11 (struct kvm*,unsigned long) ; 
 int FUNC12 (unsigned long) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 

int FUNC39(struct kvm *kvm, pgd_t *pgtable, pte_t pte,
		      unsigned long gpa, unsigned int level,
		      unsigned long mmu_seq, unsigned int lpid,
		      unsigned long *rmapp, struct rmap_nested **n_rmap)
{
	pgd_t *pgd;
	pud_t *pud, *new_pud = NULL;
	pmd_t *pmd, *new_pmd = NULL;
	pte_t *ptep, *new_ptep = NULL;
	int ret;

	/* Traverse the guest's 2nd-level tree, allocate new levels needed */
	pgd = pgtable + FUNC12(gpa);
	pud = NULL;
	if (FUNC15(*pgd))
		pud = FUNC32(pgd, gpa);
	else
		new_pud = FUNC28(kvm->mm, gpa);

	pmd = NULL;
	if (pud && FUNC34(*pud) && !FUNC30(*pud))
		pmd = FUNC18(pud, gpa);
	else if (level <= 1)
		new_pmd = FUNC2();

	if (level == 0 && !(pmd && FUNC20(*pmd) && !FUNC16(*pmd)))
		new_ptep = FUNC4();

	/* Check if we might have been invalidated; let the guest retry if so */
	FUNC37(&kvm->mmu_lock);
	ret = -EAGAIN;
	if (FUNC11(kvm, mmu_seq))
		goto out_unlock;

	/* Now traverse again under the lock and change the tree */
	ret = -ENOMEM;
	if (FUNC13(*pgd)) {
		if (!new_pud)
			goto out_unlock;
		FUNC14(kvm->mm, pgd, new_pud);
		new_pud = NULL;
	}
	pud = FUNC32(pgd, gpa);
	if (FUNC30(*pud)) {
		unsigned long hgpa = gpa & PUD_MASK;

		/* Check if we raced and someone else has set the same thing */
		if (level == 2) {
			if (FUNC35(*pud) == FUNC26(pte)) {
				ret = 0;
				goto out_unlock;
			}
			/* Valid 1GB page here already, add our extra bits */
			FUNC0((FUNC36(*pud) ^ FUNC27(pte)) &
							PTE_BITS_MUST_MATCH);
			FUNC7(kvm, (pte_t *)pud,
					      0, FUNC27(pte), hgpa, PUD_SHIFT);
			ret = 0;
			goto out_unlock;
		}
		/*
		 * If we raced with another CPU which has just put
		 * a 1GB pte in after we saw a pmd page, try again.
		 */
		if (!new_pmd) {
			ret = -EAGAIN;
			goto out_unlock;
		}
		/* Valid 1GB page here already, remove it */
		FUNC10(kvm, (pte_t *)pud, hgpa, PUD_SHIFT, NULL,
				 lpid);
	}
	if (level == 2) {
		if (!FUNC31(*pud)) {
			/*
			 * There's a page table page here, but we wanted to
			 * install a large page, so remove and free the page
			 * table page.
			 */
			FUNC9(kvm, pud, gpa, lpid);
		}
		FUNC6(kvm, gpa, (pte_t *)pud, pte);
		if (rmapp && n_rmap)
			FUNC1(kvm, rmapp, n_rmap);
		ret = 0;
		goto out_unlock;
	}
	if (FUNC31(*pud)) {
		if (!new_pmd)
			goto out_unlock;
		FUNC33(kvm->mm, pud, new_pmd);
		new_pmd = NULL;
	}
	pmd = FUNC18(pud, gpa);
	if (FUNC16(*pmd)) {
		unsigned long lgpa = gpa & PMD_MASK;

		/* Check if we raced and someone else has set the same thing */
		if (level == 1) {
			if (FUNC21(*pmd) == FUNC26(pte)) {
				ret = 0;
				goto out_unlock;
			}
			/* Valid 2MB page here already, add our extra bits */
			FUNC0((FUNC22(*pmd) ^ FUNC27(pte)) &
							PTE_BITS_MUST_MATCH);
			FUNC7(kvm, FUNC23(pmd),
					0, FUNC27(pte), lgpa, PMD_SHIFT);
			ret = 0;
			goto out_unlock;
		}

		/*
		 * If we raced with another CPU which has just put
		 * a 2MB pte in after we saw a pte page, try again.
		 */
		if (!new_ptep) {
			ret = -EAGAIN;
			goto out_unlock;
		}
		/* Valid 2MB page here already, remove it */
		FUNC10(kvm, FUNC23(pmd), lgpa, PMD_SHIFT, NULL,
				 lpid);
	}
	if (level == 1) {
		if (!FUNC17(*pmd)) {
			/*
			 * There's a page table page here, but we wanted to
			 * install a large page, so remove and free the page
			 * table page.
			 */
			FUNC8(kvm, pmd, gpa, lpid);
		}
		FUNC6(kvm, gpa, FUNC23(pmd), pte);
		if (rmapp && n_rmap)
			FUNC1(kvm, rmapp, n_rmap);
		ret = 0;
		goto out_unlock;
	}
	if (FUNC17(*pmd)) {
		if (!new_ptep)
			goto out_unlock;
		FUNC19(kvm->mm, pmd, new_ptep);
		new_ptep = NULL;
	}
	ptep = FUNC24(pmd, gpa);
	if (FUNC25(*ptep)) {
		/* Check if someone else set the same thing */
		if (FUNC26(*ptep) == FUNC26(pte)) {
			ret = 0;
			goto out_unlock;
		}
		/* Valid page here already, add our extra bits */
		FUNC0((FUNC27(*ptep) ^ FUNC27(pte)) &
							PTE_BITS_MUST_MATCH);
		FUNC7(kvm, ptep, 0, FUNC27(pte), gpa, 0);
		ret = 0;
		goto out_unlock;
	}
	FUNC6(kvm, gpa, ptep, pte);
	if (rmapp && n_rmap)
		FUNC1(kvm, rmapp, n_rmap);
	ret = 0;

 out_unlock:
	FUNC38(&kvm->mmu_lock);
	if (new_pud)
		FUNC29(kvm->mm, new_pud);
	if (new_pmd)
		FUNC3(new_pmd);
	if (new_ptep)
		FUNC5(new_ptep);
	return ret;
}