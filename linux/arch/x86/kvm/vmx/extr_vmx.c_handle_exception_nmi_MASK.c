#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_14__ {void* event_exit_inst_len; } ;
struct TYPE_15__ {TYPE_5__ arch; } ;
struct TYPE_12__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int idt_vectoring_info; int exit_intr_info; TYPE_6__ vcpu; TYPE_3__ rmode; } ;
struct TYPE_11__ {int /*<<< orphan*/  host_apf_reason; } ;
struct TYPE_13__ {unsigned long dr6; TYPE_2__ apf; } ;
struct kvm_vcpu {int guest_debug; TYPE_4__ arch; struct kvm_run* run; } ;
struct TYPE_18__ {int exception; int error_code; } ;
struct TYPE_16__ {unsigned long dr6; unsigned long dr7; unsigned long pc; int exception; } ;
struct TYPE_17__ {TYPE_7__ arch; } ;
struct TYPE_10__ {int ndata; int* data; int /*<<< orphan*/  suberror; } ;
struct kvm_run {TYPE_9__ ex; int /*<<< orphan*/  exit_reason; TYPE_8__ debug; TYPE_1__ internal; } ;

/* Variables and functions */
#define  AC_VECTOR 130 
#define  BP_VECTOR 129 
#define  DB_VECTOR 128 
 unsigned long DR6_FIXED_1 ; 
 unsigned long DR6_RTM ; 
 unsigned long DR_TRAP_BITS ; 
 int /*<<< orphan*/  EMULTYPE_VMWARE_GP ; 
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int const GP_VECTOR ; 
 int /*<<< orphan*/  GUEST_CS_BASE ; 
 int /*<<< orphan*/  GUEST_DR7 ; 
 int INTR_INFO_DELIVER_CODE_MASK ; 
 int INTR_INFO_VECTOR_MASK ; 
 int /*<<< orphan*/  KVM_EXIT_DEBUG ; 
 int /*<<< orphan*/  KVM_EXIT_EXCEPTION ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int KVM_GUESTDBG_SINGLESTEP ; 
 int KVM_GUESTDBG_USE_HW_BP ; 
 int /*<<< orphan*/  KVM_INTERNAL_ERROR_SIMUL_EX ; 
 int PFERR_RSVD_MASK ; 
 int VECTORING_INFO_VALID_MASK ; 
 int /*<<< orphan*/  VM_EXIT_INSTRUCTION_LEN ; 
 int /*<<< orphan*/  VM_EXIT_INTR_ERROR_CODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ enable_ept ; 
 int /*<<< orphan*/  enable_vmware_backdoor ; 
 int FUNC2 (struct kvm_vcpu*,int,int) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct kvm_vcpu*,int,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int const) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int const,int) ; 
 unsigned long FUNC14 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC15 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC17 (struct kvm_vcpu*) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC17(vcpu);
	struct kvm_run *kvm_run = vcpu->run;
	u32 intr_info, ex_no, error_code;
	unsigned long cr2, rip, dr6;
	u32 vect_info;

	vect_info = vmx->idt_vectoring_info;
	intr_info = vmx->exit_intr_info;

	if (FUNC7(intr_info) || FUNC8(intr_info))
		return 1; /* handled by handle_exception_nmi_irqoff() */

	if (FUNC6(intr_info))
		return FUNC3(vcpu);

	error_code = 0;
	if (intr_info & INTR_INFO_DELIVER_CODE_MASK)
		error_code = FUNC18(VM_EXIT_INTR_ERROR_CODE);

	if (!vmx->rmode.vm86_active && FUNC4(intr_info)) {
		FUNC1(!enable_vmware_backdoor);

		/*
		 * VMware backdoor emulation on #GP interception only handles
		 * IN{S}, OUT{S}, and RDPMC, none of which generate a non-zero
		 * error code on #GP.
		 */
		if (error_code) {
			FUNC13(vcpu, GP_VECTOR, error_code);
			return 1;
		}
		return FUNC10(vcpu, EMULTYPE_VMWARE_GP);
	}

	/*
	 * The #PF with PFEC.RSVD = 1 indicates the guest is accessing
	 * MMIO, it is better to report an internal error.
	 * See the comments in vmx_handle_exit.
	 */
	if ((vect_info & VECTORING_INFO_VALID_MASK) &&
	    !(FUNC9(intr_info) && !(error_code & PFERR_RSVD_MASK))) {
		vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		vcpu->run->internal.suberror = KVM_INTERNAL_ERROR_SIMUL_EX;
		vcpu->run->internal.ndata = 3;
		vcpu->run->internal.data[0] = vect_info;
		vcpu->run->internal.data[1] = intr_info;
		vcpu->run->internal.data[2] = error_code;
		return 0;
	}

	if (FUNC9(intr_info)) {
		cr2 = FUNC19(EXIT_QUALIFICATION);
		/* EPT won't cause page fault directly */
		FUNC1(!vcpu->arch.apf.host_apf_reason && enable_ept);
		return FUNC11(vcpu, error_code, cr2, NULL, 0);
	}

	ex_no = intr_info & INTR_INFO_VECTOR_MASK;

	if (vmx->rmode.vm86_active && FUNC15(vcpu, ex_no))
		return FUNC2(vcpu, ex_no, error_code);

	switch (ex_no) {
	case AC_VECTOR:
		FUNC13(vcpu, AC_VECTOR, error_code);
		return 1;
	case DB_VECTOR:
		dr6 = FUNC19(EXIT_QUALIFICATION);
		if (!(vcpu->guest_debug &
		      (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))) {
			vcpu->arch.dr6 &= ~DR_TRAP_BITS;
			vcpu->arch.dr6 |= dr6 | DR6_RTM;
			if (FUNC5(intr_info))
				FUNC0(!FUNC16(vcpu));

			FUNC12(vcpu, DB_VECTOR);
			return 1;
		}
		kvm_run->debug.arch.dr6 = dr6 | DR6_FIXED_1;
		kvm_run->debug.arch.dr7 = FUNC19(GUEST_DR7);
		/* fall through */
	case BP_VECTOR:
		/*
		 * Update instruction length as we may reinject #BP from
		 * user space while in guest debugging mode. Reading it for
		 * #DB as well causes no harm, it is not used in that case.
		 */
		vmx->vcpu.arch.event_exit_inst_len =
			FUNC18(VM_EXIT_INSTRUCTION_LEN);
		kvm_run->exit_reason = KVM_EXIT_DEBUG;
		rip = FUNC14(vcpu);
		kvm_run->debug.arch.pc = FUNC19(GUEST_CS_BASE) + rip;
		kvm_run->debug.arch.exception = ex_no;
		break;
	default:
		kvm_run->exit_reason = KVM_EXIT_EXCEPTION;
		kvm_run->ex.exception = ex_no;
		kvm_run->ex.error_code = error_code;
		break;
	}
	return 0;
}