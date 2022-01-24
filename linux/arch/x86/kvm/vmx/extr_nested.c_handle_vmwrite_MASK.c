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
typedef  unsigned int u32 ;
struct x86_exception {int dummy; } ;
struct vmcs12 {unsigned long long vmcs_link_pointer; } ;
struct TYPE_6__ {unsigned long long current_vmptr; int dirty_vmcs12; } ;
struct TYPE_4__ {int /*<<< orphan*/  shadow_vmcs; } ;
struct vcpu_vmx {TYPE_3__ nested; TYPE_2__* loaded_vmcs; TYPE_1__ vmcs01; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
struct TYPE_5__ {int /*<<< orphan*/  vmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 unsigned long GUEST_ES_AR_BYTES ; 
 unsigned long GUEST_TR_AR_BYTES ; 
 int /*<<< orphan*/  VMXERR_UNSUPPORTED_VMCS_COMPONENT ; 
 int /*<<< orphan*/  VMXERR_VMWRITE_READ_ONLY_VMCS_COMPONENT ; 
 int /*<<< orphan*/  VMX_INSTRUCTION_INFO ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ enable_shadow_vmcs ; 
 struct vmcs12* FUNC2 (struct kvm_vcpu*) ; 
 struct vmcs12* FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*,unsigned long,unsigned int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,struct x86_exception*) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ,int*,int,struct x86_exception*) ; 
 void* FUNC11 (struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 int FUNC14 (struct kvm_vcpu*) ; 
 int FUNC15 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 struct vcpu_vmx* FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct vmcs12*,unsigned long,short,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (unsigned long) ; 
 short FUNC23 (unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC25 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct kvm_vcpu *vcpu)
{
	unsigned long field;
	int len;
	gva_t gva;
	struct vcpu_vmx *vmx = FUNC19(vcpu);
	unsigned long exit_qualification = FUNC26(EXIT_QUALIFICATION);
	u32 vmx_instruction_info = FUNC25(VMX_INSTRUCTION_INFO);

	/* The value to write might be 32 or 64 bits, depending on L1's long
	 * mode, and eventually we need to write that into a field of several
	 * possible lengths. The code below first zero-extends the value to 64
	 * bit (field_value), and then copies only the appropriate number of
	 * bits into the vmcs12 field.
	 */
	u64 field_value = 0;
	struct x86_exception e;
	struct vmcs12 *vmcs12;
	short offset;

	if (!FUNC13(vcpu))
		return 1;

	if (vmx->nested.current_vmptr == -1ull)
		return FUNC14(vcpu);

	if (vmx_instruction_info & (1u << 10))
		field_value = FUNC11(vcpu,
			(((vmx_instruction_info) >> 3) & 0xf));
	else {
		len = FUNC5(vcpu) ? 8 : 4;
		if (FUNC4(vcpu, exit_qualification,
				vmx_instruction_info, false, len, &gva))
			return 1;
		if (FUNC10(vcpu, gva, &field_value, len, &e)) {
			FUNC9(vcpu, &e);
			return 1;
		}
	}


	field = FUNC11(vcpu, (((vmx_instruction_info) >> 28) & 0xf));
	/*
	 * If the vCPU supports "VMWRITE to any supported field in the
	 * VMCS," then the "read-only" fields are actually read/write.
	 */
	if (FUNC22(field) &&
	    !FUNC12(vcpu))
		return FUNC15(vcpu,
			VMXERR_VMWRITE_READ_ONLY_VMCS_COMPONENT);

	if (!FUNC6(vcpu)) {
		vmcs12 = FUNC3(vcpu);

		/*
		 * Ensure vmcs12 is up-to-date before any VMWRITE that dirties
		 * vmcs12, else we may crush a field or consume a stale value.
		 */
		if (!FUNC8(field))
			FUNC1(vcpu, vmcs12);
	} else {
		/*
		 * When vmcs->vmcs_link_pointer is -1ull, any VMWRITE
		 * to shadowed-field sets the ALU flags for VMfailInvalid.
		 */
		if (FUNC3(vcpu)->vmcs_link_pointer == -1ull)
			return FUNC14(vcpu);
		vmcs12 = FUNC2(vcpu);
	}

	offset = FUNC23(field);
	if (offset < 0)
		return FUNC15(vcpu,
			VMXERR_UNSUPPORTED_VMCS_COMPONENT);

	/*
	 * Some Intel CPUs intentionally drop the reserved bits of the AR byte
	 * fields on VMWRITE.  Emulate this behavior to ensure consistent KVM
	 * behavior regardless of the underlying hardware, e.g. if an AR_BYTE
	 * field is intercepted for VMWRITE but not VMREAD (in L1), then VMREAD
	 * from L1 will return a different value than VMREAD from L2 (L1 sees
	 * the stripped down value, L2 sees the full value as stored by KVM).
	 */
	if (field >= GUEST_ES_AR_BYTES && field <= GUEST_TR_AR_BYTES)
		field_value &= 0x1f0ff;

	FUNC20(vmcs12, field, offset, field_value);

	/*
	 * Do not track vmcs12 dirty-state if in guest-mode as we actually
	 * dirty shadow vmcs12 instead of vmcs12.  Fields that can be updated
	 * by L1 without a vmexit are always updated in the vmcs02, i.e. don't
	 * "dirty" vmcs12, all others go down the prepare_vmcs02() slow path.
	 */
	if (!FUNC6(vcpu) && !FUNC8(field)) {
		/*
		 * L1 can read these fields without exiting, ensure the
		 * shadow VMCS is up-to-date.
		 */
		if (enable_shadow_vmcs && FUNC7(field)) {
			FUNC17();
			FUNC24(vmx->vmcs01.shadow_vmcs);

			FUNC0(field, field_value);

			FUNC21(vmx->vmcs01.shadow_vmcs);
			FUNC24(vmx->loaded_vmcs->vmcs);
			FUNC18();
		}
		vmx->nested.dirty_vmcs12 = true;
	}

	return FUNC16(vcpu);
}