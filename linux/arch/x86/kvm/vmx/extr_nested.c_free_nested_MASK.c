#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int vmxon; } ;
struct TYPE_8__ {int vmxon; int posted_intr_nv; unsigned long long current_vmptr; int /*<<< orphan*/  vmcs02; int /*<<< orphan*/ * pi_desc; int /*<<< orphan*/  pi_desc_map; int /*<<< orphan*/  virtual_apic_map; int /*<<< orphan*/ * apic_access_page; int /*<<< orphan*/ * cached_shadow_vmcs12; int /*<<< orphan*/ * cached_vmcs12; int /*<<< orphan*/  vpid02; TYPE_1__ smm; } ;
struct TYPE_6__ {int /*<<< orphan*/ * shadow_vmcs; } ;
struct vcpu_vmx {TYPE_4__ nested; TYPE_2__ vmcs01; } ;
struct TYPE_7__ {int /*<<< orphan*/  guest_mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_MMU_ROOTS_ALL ; 
 int /*<<< orphan*/  KVM_REQ_GET_VMCS12_PAGES ; 
 scalar_t__ enable_shadow_vmcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vcpu_vmx*) ; 

__attribute__((used)) static void FUNC12(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC9(vcpu);

	if (!vmx->nested.vmxon && !vmx->nested.smm.vmxon)
		return;

	FUNC4(KVM_REQ_GET_VMCS12_PAGES, vcpu);

	vmx->nested.vmxon = false;
	vmx->nested.smm.vmxon = false;
	FUNC2(vmx->nested.vpid02);
	vmx->nested.posted_intr_nv = -1;
	vmx->nested.current_vmptr = -1ull;
	if (enable_shadow_vmcs) {
		FUNC11(vmx);
		FUNC10(vmx->vmcs01.shadow_vmcs);
		FUNC1(vmx->vmcs01.shadow_vmcs);
		vmx->vmcs01.shadow_vmcs = NULL;
	}
	FUNC3(vmx->nested.cached_vmcs12);
	vmx->nested.cached_vmcs12 = NULL;
	FUNC3(vmx->nested.cached_shadow_vmcs12);
	vmx->nested.cached_shadow_vmcs12 = NULL;
	/* Unpin physical memory we referred to in the vmcs02 */
	if (vmx->nested.apic_access_page) {
		FUNC6(vmx->nested.apic_access_page);
		vmx->nested.apic_access_page = NULL;
	}
	FUNC7(vcpu, &vmx->nested.virtual_apic_map, true);
	FUNC7(vcpu, &vmx->nested.pi_desc_map, true);
	vmx->nested.pi_desc = NULL;

	FUNC5(vcpu, &vcpu->arch.guest_mmu, KVM_MMU_ROOTS_ALL);

	FUNC8(vcpu);

	FUNC0(&vmx->nested.vmcs02);
}