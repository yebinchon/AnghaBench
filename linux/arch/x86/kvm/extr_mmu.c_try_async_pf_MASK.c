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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PFN_NOSLOT ; 
 int /*<<< orphan*/  KVM_REQ_APF_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_memory_slot*,int /*<<< orphan*/ ,int,int*,int,int*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 struct kvm_memory_slot* FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct kvm_vcpu *vcpu, bool prefault, gfn_t gfn,
			 gva_t gva, kvm_pfn_t *pfn, bool write, bool *writable)
{
	struct kvm_memory_slot *slot;
	bool async;

	/*
	 * Don't expose private memslots to L2.
	 */
	if (FUNC1(vcpu) && !FUNC5(vcpu->kvm, gfn)) {
		*pfn = KVM_PFN_NOSLOT;
		return false;
	}

	slot = FUNC7(vcpu, gfn);
	async = false;
	*pfn = FUNC0(slot, gfn, false, &async, write, writable);
	if (!async)
		return false; /* *pfn has correct page already */

	if (!prefault && FUNC3(vcpu)) {
		FUNC9(gva, gfn);
		if (FUNC4(vcpu, gfn)) {
			FUNC8(gva, gfn);
			FUNC6(KVM_REQ_APF_HALT, vcpu);
			return true;
		} else if (FUNC2(vcpu, gva, gfn))
			return true;
	}

	*pfn = FUNC0(slot, gfn, false, NULL, write, writable);
	return false;
}