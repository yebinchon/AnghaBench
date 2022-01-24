#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int gfn_t ;
struct TYPE_2__ {unsigned long mmu_notifier_seq; int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_ALL ; 
 int FUNC0 (int) ; 
 int PFERR_FETCH_MASK ; 
 int PFERR_WRITE_MASK ; 
 int PT_DIRECTORY_LEVEL ; 
 int RET_PF_RETRY ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*) ; 
 int FUNC8 (struct kvm_vcpu*,int,int*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC15(struct kvm_vcpu *vcpu, gva_t v, u32 error_code,
			 gfn_t gfn, bool prefault)
{
	int r;
	int level;
	bool force_pt_level;
	kvm_pfn_t pfn;
	unsigned long mmu_seq;
	bool map_writable, write = error_code & PFERR_WRITE_MASK;
	bool lpage_disallowed = (error_code & PFERR_FETCH_MASK) &&
				FUNC4();

	force_pt_level = lpage_disallowed;
	level = FUNC8(vcpu, gfn, &force_pt_level);
	if (FUNC6(!force_pt_level)) {
		/*
		 * This path builds a PAE pagetable - so we can map
		 * 2mb pages at maximum. Therefore check if the level
		 * is larger than that.
		 */
		if (level > PT_DIRECTORY_LEVEL)
			level = PT_DIRECTORY_LEVEL;

		gfn &= ~(FUNC0(level) - 1);
	}

	if (FUNC2(vcpu, v, level, error_code))
		return RET_PF_RETRY;

	mmu_seq = vcpu->kvm->mmu_notifier_seq;
	FUNC10();

	if (FUNC14(vcpu, prefault, gfn, v, &pfn, write, &map_writable))
		return RET_PF_RETRY;

	if (FUNC3(vcpu, v, gfn, pfn, ACC_ALL, &r))
		return r;

	r = RET_PF_RETRY;
	FUNC11(&vcpu->kvm->mmu_lock);
	if (FUNC9(vcpu->kvm, mmu_seq))
		goto out_unlock;
	if (FUNC7(vcpu) < 0)
		goto out_unlock;
	if (FUNC6(!force_pt_level))
		FUNC13(vcpu, gfn, &pfn, &level);
	r = FUNC1(vcpu, v, write, map_writable, level, pfn,
			 prefault, false);
out_unlock:
	FUNC12(&vcpu->kvm->mmu_lock);
	FUNC5(pfn);
	return r;
}