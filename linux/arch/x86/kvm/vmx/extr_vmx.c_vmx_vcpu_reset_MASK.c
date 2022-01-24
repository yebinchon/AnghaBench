#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_9__ {int cr0; int /*<<< orphan*/ * regs; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_6__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int hv_deadline_tsc; int vpid; TYPE_5__ vcpu; scalar_t__ msr_ia32_umwait_control; scalar_t__ spec_ctrl; TYPE_1__ rmode; } ;
struct msr_data {int data; int host_initiated; } ;
struct TYPE_8__ {int microcode_version; TYPE_2__* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_7__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int GUEST_ACTIVITY_ACTIVE ; 
 int /*<<< orphan*/  GUEST_ACTIVITY_STATE ; 
 int /*<<< orphan*/  GUEST_BNDCFGS ; 
 int /*<<< orphan*/  GUEST_CS_BASE ; 
 int /*<<< orphan*/  GUEST_CS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_GDTR_BASE ; 
 int /*<<< orphan*/  GUEST_GDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_IA32_DEBUGCTL ; 
 int /*<<< orphan*/  GUEST_IDTR_BASE ; 
 int /*<<< orphan*/  GUEST_IDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_LDTR_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_LDTR_BASE ; 
 int /*<<< orphan*/  GUEST_LDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_LDTR_SELECTOR ; 
 int /*<<< orphan*/  GUEST_PENDING_DBG_EXCEPTIONS ; 
 int /*<<< orphan*/  GUEST_SYSENTER_CS ; 
 int /*<<< orphan*/  GUEST_SYSENTER_EIP ; 
 int /*<<< orphan*/  GUEST_SYSENTER_ESP ; 
 int /*<<< orphan*/  GUEST_TR_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_TR_BASE ; 
 int /*<<< orphan*/  GUEST_TR_LIMIT ; 
 int /*<<< orphan*/  GUEST_TR_SELECTOR ; 
 int /*<<< orphan*/  KVM_REQ_APIC_PAGE_RELOAD ; 
 int MSR_IA32_APICBASE_BSP ; 
 int MSR_IA32_APICBASE_ENABLE ; 
 int /*<<< orphan*/  TPR_THRESHOLD ; 
 size_t VCPU_REGS_RDX ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int /*<<< orphan*/  VIRTUAL_APIC_PAGE_ADDR ; 
 int /*<<< orphan*/  VIRTUAL_PROCESSOR_ID ; 
 int /*<<< orphan*/  VM_ENTRY_INTR_INFO_FIELD ; 
 int X86_CR0_CD ; 
 int X86_CR0_ET ; 
 int X86_CR0_NW ; 
 int /*<<< orphan*/  X86_EFLAGS_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct msr_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vcpu_vmx*) ; 
 struct vcpu_vmx* FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

__attribute__((used)) static void FUNC25(struct kvm_vcpu *vcpu, bool init_event)
{
	struct vcpu_vmx *vmx = FUNC13(vcpu);
	struct msr_data apic_base_msr;
	u64 cr0;

	vmx->rmode.vm86_active = 0;
	vmx->spec_ctrl = 0;

	vmx->msr_ia32_umwait_control = 0;

	vcpu->arch.microcode_version = 0x100000000ULL;
	vmx->vcpu.arch.regs[VCPU_REGS_RDX] = FUNC3();
	vmx->hv_deadline_tsc = -1;
	FUNC8(vcpu, 0);

	if (!init_event) {
		apic_base_msr.data = APIC_DEFAULT_PHYS_BASE |
				     MSR_IA32_APICBASE_ENABLE;
		if (FUNC10(vcpu))
			apic_base_msr.data |= MSR_IA32_APICBASE_BSP;
		apic_base_msr.host_initiated = true;
		FUNC7(vcpu, &apic_base_msr);
	}

	FUNC20(vmx);

	FUNC11(VCPU_SREG_CS);
	FUNC15(GUEST_CS_SELECTOR, 0xf000);
	FUNC18(GUEST_CS_BASE, 0xffff0000ul);

	FUNC11(VCPU_SREG_DS);
	FUNC11(VCPU_SREG_ES);
	FUNC11(VCPU_SREG_FS);
	FUNC11(VCPU_SREG_GS);
	FUNC11(VCPU_SREG_SS);

	FUNC15(GUEST_TR_SELECTOR, 0);
	FUNC18(GUEST_TR_BASE, 0);
	FUNC16(GUEST_TR_LIMIT, 0xffff);
	FUNC16(GUEST_TR_AR_BYTES, 0x008b);

	FUNC15(GUEST_LDTR_SELECTOR, 0);
	FUNC18(GUEST_LDTR_BASE, 0);
	FUNC16(GUEST_LDTR_LIMIT, 0xffff);
	FUNC16(GUEST_LDTR_AR_BYTES, 0x00082);

	if (!init_event) {
		FUNC16(GUEST_SYSENTER_CS, 0);
		FUNC18(GUEST_SYSENTER_ESP, 0);
		FUNC18(GUEST_SYSENTER_EIP, 0);
		FUNC17(GUEST_IA32_DEBUGCTL, 0);
	}

	FUNC9(vcpu, X86_EFLAGS_FIXED);
	FUNC6(vcpu, 0xfff0);

	FUNC18(GUEST_GDTR_BASE, 0);
	FUNC16(GUEST_GDTR_LIMIT, 0xffff);

	FUNC18(GUEST_IDTR_BASE, 0);
	FUNC16(GUEST_IDTR_LIMIT, 0xffff);

	FUNC16(GUEST_ACTIVITY_STATE, GUEST_ACTIVITY_ACTIVE);
	FUNC16(GUEST_INTERRUPTIBILITY_INFO, 0);
	FUNC18(GUEST_PENDING_DBG_EXCEPTIONS, 0);
	if (FUNC5())
		FUNC17(GUEST_BNDCFGS, 0);

	FUNC12(vmx);

	FUNC16(VM_ENTRY_INTR_INFO_FIELD, 0);  /* 22.2.1 */

	if (FUNC1() && !init_event) {
		FUNC17(VIRTUAL_APIC_PAGE_ADDR, 0);
		if (FUNC2(vcpu))
			FUNC17(VIRTUAL_APIC_PAGE_ADDR,
				     FUNC0(vcpu->arch.apic->regs));
		FUNC16(TPR_THRESHOLD, 0);
	}

	FUNC4(KVM_REQ_APIC_PAGE_RELOAD, vcpu);

	if (vmx->vpid != 0)
		FUNC15(VIRTUAL_PROCESSOR_ID, vmx->vpid);

	cr0 = X86_CR0_NW | X86_CR0_CD | X86_CR0_ET;
	vmx->vcpu.arch.cr0 = cr0;
	FUNC21(vcpu, cr0); /* enter rmode */
	FUNC22(vcpu, 0);
	FUNC23(vcpu, 0);

	FUNC14(vcpu);

	FUNC24(vmx->vpid);
	if (init_event)
		FUNC19(vcpu);
}