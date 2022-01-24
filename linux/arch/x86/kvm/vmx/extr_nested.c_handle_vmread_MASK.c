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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct x86_exception {int dummy; } ;
struct vmcs12 {unsigned long long vmcs_link_pointer; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
struct TYPE_3__ {unsigned long long current_vmptr; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  VMXERR_UNSUPPORTED_VMCS_COMPONENT ; 
 int /*<<< orphan*/  VMX_INSTRUCTION_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct vmcs12*) ; 
 struct vmcs12* FUNC1 (struct kvm_vcpu*) ; 
 struct vmcs12* FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,unsigned long,int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct x86_exception*) ; 
 unsigned long FUNC8 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct x86_exception*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int FUNC12 (struct kvm_vcpu*) ; 
 int FUNC13 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct kvm_vcpu*) ; 
 TYPE_2__* FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmcs12*,unsigned long,short) ; 
 short FUNC17 (unsigned long) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct kvm_vcpu *vcpu)
{
	unsigned long field;
	u64 field_value;
	unsigned long exit_qualification = FUNC19(EXIT_QUALIFICATION);
	u32 vmx_instruction_info = FUNC18(VMX_INSTRUCTION_INFO);
	int len;
	gva_t gva = 0;
	struct vmcs12 *vmcs12;
	struct x86_exception e;
	short offset;

	if (!FUNC11(vcpu))
		return 1;

	if (FUNC15(vcpu)->nested.current_vmptr == -1ull)
		return FUNC12(vcpu);

	if (!FUNC5(vcpu))
		vmcs12 = FUNC2(vcpu);
	else {
		/*
		 * When vmcs->vmcs_link_pointer is -1ull, any VMREAD
		 * to shadowed-field sets the ALU flags for VMfailInvalid.
		 */
		if (FUNC2(vcpu)->vmcs_link_pointer == -1ull)
			return FUNC12(vcpu);
		vmcs12 = FUNC1(vcpu);
	}

	/* Decode instruction info and find the field to read */
	field = FUNC8(vcpu, (((vmx_instruction_info) >> 28) & 0xf));

	offset = FUNC17(field);
	if (offset < 0)
		return FUNC13(vcpu,
			VMXERR_UNSUPPORTED_VMCS_COMPONENT);

	if (!FUNC5(vcpu) && FUNC6(field))
		FUNC0(vcpu, vmcs12);

	/* Read the field, zero-extended to a u64 field_value */
	field_value = FUNC16(vmcs12, field, offset);

	/*
	 * Now copy part of this value to register or memory, as requested.
	 * Note that the number of bits actually copied is 32 or 64 depending
	 * on the guest's mode (32 or 64 bit), not on the given field's length.
	 */
	if (vmx_instruction_info & (1u << 10)) {
		FUNC9(vcpu, (((vmx_instruction_info) >> 3) & 0xf),
			field_value);
	} else {
		len = FUNC4(vcpu) ? 8 : 4;
		if (FUNC3(vcpu, exit_qualification,
				vmx_instruction_info, true, len, &gva))
			return 1;
		/* _system ok, nested_vmx_check_permission has verified cpl=0 */
		if (FUNC10(vcpu, gva, &field_value, len, &e))
			FUNC7(vcpu, &e);
	}

	return FUNC14(vcpu);
}