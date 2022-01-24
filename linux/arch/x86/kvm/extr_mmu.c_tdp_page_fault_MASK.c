#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  int gva_t ;
typedef  int gfn_t ;
struct TYPE_6__ {unsigned long mmu_notifier_seq; int /*<<< orphan*/  mmu_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  root_hpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_ALL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PAGE_SHIFT ; 
 int PFERR_FETCH_MASK ; 
 int PFERR_WRITE_MASK ; 
 int PT_DIRECTORY_LEVEL ; 
 int RET_PF_EMULATE ; 
 int RET_PF_RETRY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm_vcpu*,int,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int,int) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,int,int,int) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*) ; 
 int FUNC11 (struct kvm_vcpu*,int,int*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,unsigned long) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC19 (struct kvm_vcpu*,int,int,int,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC20(struct kvm_vcpu *vcpu, gva_t gpa, u32 error_code,
			  bool prefault)
{
	kvm_pfn_t pfn;
	int r;
	int level;
	bool force_pt_level;
	gfn_t gfn = gpa >> PAGE_SHIFT;
	unsigned long mmu_seq;
	int write = error_code & PFERR_WRITE_MASK;
	bool map_writable;
	bool lpage_disallowed = (error_code & PFERR_FETCH_MASK) &&
				FUNC7();

	FUNC1(!FUNC2(vcpu->arch.mmu->root_hpa));

	if (FUNC14(vcpu, error_code, gfn))
		return RET_PF_EMULATE;

	r = FUNC13(vcpu);
	if (r)
		return r;

	force_pt_level =
		lpage_disallowed ||
		!FUNC4(vcpu, gfn, PT_DIRECTORY_LEVEL);
	level = FUNC11(vcpu, gfn, &force_pt_level);
	if (FUNC9(!force_pt_level)) {
		if (level > PT_DIRECTORY_LEVEL &&
		    !FUNC4(vcpu, gfn, level))
			level = PT_DIRECTORY_LEVEL;
		gfn &= ~(FUNC0(level) - 1);
	}

	if (FUNC5(vcpu, gpa, level, error_code))
		return RET_PF_RETRY;

	mmu_seq = vcpu->kvm->mmu_notifier_seq;
	FUNC15();

	if (FUNC19(vcpu, prefault, gfn, gpa, &pfn, write, &map_writable))
		return RET_PF_RETRY;

	if (FUNC6(vcpu, 0, gfn, pfn, ACC_ALL, &r))
		return r;

	r = RET_PF_RETRY;
	FUNC16(&vcpu->kvm->mmu_lock);
	if (FUNC12(vcpu->kvm, mmu_seq))
		goto out_unlock;
	if (FUNC10(vcpu) < 0)
		goto out_unlock;
	if (FUNC9(!force_pt_level))
		FUNC18(vcpu, gfn, &pfn, &level);
	r = FUNC3(vcpu, gpa, write, map_writable, level, pfn,
			 prefault, lpage_disallowed);
out_unlock:
	FUNC17(&vcpu->kvm->mmu_lock);
	FUNC8(pfn);
	return r;
}