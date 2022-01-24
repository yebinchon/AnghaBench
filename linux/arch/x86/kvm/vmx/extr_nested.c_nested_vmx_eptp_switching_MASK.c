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
typedef  int u64 ;
typedef  int u32 ;
struct vmcs12 {int eptp_list_address; int ept_pointer; } ;
struct TYPE_6__ {struct kvm_mmu* walk_mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int ad_disabled; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct kvm_mmu {int ept_ad; TYPE_2__ mmu_role; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int VMFUNC_EPTP_ENTRIES ; 
 int VMX_EPTP_AD_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu,
				     struct vmcs12 *vmcs12)
{
	u32 index = FUNC2(vcpu);
	u64 address;
	bool accessed_dirty;
	struct kvm_mmu *mmu = vcpu->arch.walk_mmu;

	if (!FUNC5(vmcs12) ||
	    !FUNC4(vmcs12))
		return 1;

	if (index >= VMFUNC_EPTP_ENTRIES)
		return 1;


	if (FUNC3(vcpu, vmcs12->eptp_list_address >> PAGE_SHIFT,
				     &address, index * 8, 8))
		return 1;

	accessed_dirty = !!(address & VMX_EPTP_AD_ENABLE_BIT);

	/*
	 * If the (L2) guest does a vmfunc to the currently
	 * active ept pointer, we don't have to do anything else
	 */
	if (vmcs12->ept_pointer != address) {
		if (!FUNC6(vcpu, address))
			return 1;

		FUNC1(vcpu);
		mmu->ept_ad = accessed_dirty;
		mmu->mmu_role.base.ad_disabled = !accessed_dirty;
		vmcs12->ept_pointer = address;
		/*
		 * TODO: Check what's the correct approach in case
		 * mmu reload fails. Currently, we just let the next
		 * reload potentially fail
		 */
		FUNC0(vcpu);
	}

	return 0;
}