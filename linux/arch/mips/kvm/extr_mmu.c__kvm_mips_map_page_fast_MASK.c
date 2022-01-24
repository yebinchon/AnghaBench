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
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (struct kvm*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct kvm_vcpu *vcpu, unsigned long gpa,
				   bool write_fault,
				   pte_t *out_entry, pte_t *out_buddy)
{
	struct kvm *kvm = vcpu->kvm;
	gfn_t gfn = gpa >> PAGE_SHIFT;
	pte_t *ptep;
	kvm_pfn_t pfn = 0;	/* silence bogus GCC warning */
	bool pfn_valid = false;
	int ret = 0;

	FUNC13(&kvm->mmu_lock);

	/* Fast path - just check GPA page table for an existing entry */
	ptep = FUNC0(kvm, NULL, gpa);
	if (!ptep || !FUNC8(*ptep)) {
		ret = -EFAULT;
		goto out;
	}

	/* Track access to pages marked old */
	if (!FUNC10(*ptep)) {
		FUNC12(ptep, FUNC6(*ptep));
		pfn = FUNC7(*ptep);
		pfn_valid = true;
		/* call kvm_set_pfn_accessed() after unlock */
	}
	if (write_fault && !FUNC4(*ptep)) {
		if (!FUNC9(*ptep)) {
			ret = -EFAULT;
			goto out;
		}

		/* Track dirtying of writeable pages */
		FUNC12(ptep, FUNC5(*ptep));
		pfn = FUNC7(*ptep);
		FUNC3(kvm, gfn);
		FUNC2(pfn);
	}

	if (out_entry)
		*out_entry = *ptep;
	if (out_buddy)
		*out_buddy = *FUNC11(ptep);

out:
	FUNC14(&kvm->mmu_lock);
	if (pfn_valid)
		FUNC1(pfn);
	return ret;
}