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
struct TYPE_3__ {scalar_t__ revision_id; scalar_t__ shadow_vmcs; } ;
struct vmcs12 {TYPE_1__ hdr; } ;
struct TYPE_4__ {scalar_t__ vmxon_ptr; scalar_t__ current_vmptr; int /*<<< orphan*/  cached_vmcs12; scalar_t__ hv_evmcs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {struct vmcs12* hva; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 scalar_t__ VMCS12_REVISION ; 
 int /*<<< orphan*/  VMCS12_SIZE ; 
 int /*<<< orphan*/  VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID ; 
 int /*<<< orphan*/  VMXERR_VMPTRLD_INVALID_ADDRESS ; 
 int /*<<< orphan*/  VMXERR_VMPTRLD_VMXON_POINTER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,struct kvm_host_map*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vmcs12*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*,scalar_t__*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct vcpu_vmx*,scalar_t__) ; 
 struct vcpu_vmx* FUNC12 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC13(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC12(vcpu);
	gpa_t vmptr;

	if (!FUNC6(vcpu))
		return 1;

	if (FUNC8(vcpu, &vmptr))
		return 1;

	if (!FUNC10(vcpu, vmptr))
		return FUNC7(vcpu,
			VMXERR_VMPTRLD_INVALID_ADDRESS);

	if (vmptr == vmx->nested.vmxon_ptr)
		return FUNC7(vcpu,
			VMXERR_VMPTRLD_VMXON_POINTER);

	/* Forbid normal VMPTRLD if Enlightened version was used */
	if (vmx->nested.hv_evmcs)
		return 1;

	if (vmx->nested.current_vmptr != vmptr) {
		struct kvm_host_map map;
		struct vmcs12 *new_vmcs12;

		if (FUNC1(vcpu, FUNC0(vmptr), &map)) {
			/*
			 * Reads from an unbacked page return all 1s,
			 * which means that the 32 bits located at the
			 * given physical address won't match the required
			 * VMCS12_REVISION identifier.
			 */
			return FUNC7(vcpu,
				VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID);
		}

		new_vmcs12 = map.hva;

		if (new_vmcs12->hdr.revision_id != VMCS12_REVISION ||
		    (new_vmcs12->hdr.shadow_vmcs &&
		     !FUNC4(vcpu))) {
			FUNC2(vcpu, &map, false);
			return FUNC7(vcpu,
				VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID);
		}

		FUNC5(vcpu);

		/*
		 * Load VMCS12 from guest memory since it is not already
		 * cached.
		 */
		FUNC3(vmx->nested.cached_vmcs12, new_vmcs12, VMCS12_SIZE);
		FUNC2(vcpu, &map, false);

		FUNC11(vmx, vmptr);
	}

	return FUNC9(vcpu);
}