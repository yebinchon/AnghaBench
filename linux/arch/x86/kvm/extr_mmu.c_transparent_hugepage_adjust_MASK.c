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
struct kvm_vcpu {int dummy; } ;
typedef  unsigned long kvm_pfn_t ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PT_DIRECTORY_LEVEL ; 
 int PT_PAGE_TABLE_LEVEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

__attribute__((used)) static void FUNC10(struct kvm_vcpu *vcpu,
					gfn_t gfn, kvm_pfn_t *pfnp,
					int *levelp)
{
	kvm_pfn_t pfn = *pfnp;
	int level = *levelp;

	/*
	 * Check if it's a transparent hugepage. If this would be an
	 * hugetlbfs page, level wouldn't be set to
	 * PT_PAGE_TABLE_LEVEL and there would be no adjustment done
	 * here.
	 */
	if (!FUNC3(pfn) && !FUNC5(pfn) &&
	    !FUNC6(pfn) && level == PT_PAGE_TABLE_LEVEL &&
	    FUNC1(FUNC9(pfn)) &&
	    !FUNC8(vcpu, gfn, PT_DIRECTORY_LEVEL)) {
		unsigned long mask;
		/*
		 * mmu_notifier_retry was successful and we hold the
		 * mmu_lock here, so the pmd can't become splitting
		 * from under us, and in turn
		 * __split_huge_page_refcount() can't run from under
		 * us and we can safely transfer the refcount from
		 * PG_tail to PG_head as we switch the pfn to tail to
		 * head.
		 */
		*levelp = level = PT_DIRECTORY_LEVEL;
		mask = FUNC0(level) - 1;
		FUNC2((gfn & mask) != (pfn & mask));
		if (pfn & mask) {
			FUNC7(pfn);
			pfn &= ~mask;
			FUNC4(pfn);
			*pfnp = pfn;
		}
	}
}