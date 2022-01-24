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
struct TYPE_8__ {int vector; unsigned long address; } ;
struct x86_emulate_ctxt {int have_exception; int perm_ok; int ud; int eflags; scalar_t__ tf; int /*<<< orphan*/  eip; TYPE_3__ exception; scalar_t__ interruptibility; int /*<<< orphan*/  _eip; } ;
struct TYPE_6__ {scalar_t__ count; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {int write_fault_to_shadow_pgtable; int l1tf_flush_l1d; int emulate_regs_need_sync_from_vcpu; int emulate_regs_need_sync_to_vcpu; int /*<<< orphan*/  complete_userspace_io; TYPE_1__ pio; struct x86_emulate_ctxt emulate_ctxt; } ;
struct TYPE_7__ {int /*<<< orphan*/  mmio_exits; int /*<<< orphan*/  insn_emulation; } ;
struct kvm_vcpu {TYPE_4__ arch; int /*<<< orphan*/  mmio_is_write; TYPE_2__ stat; scalar_t__ mmio_needed; } ;
struct TYPE_10__ {unsigned long (* get_rflags ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int EMULATION_FAILED ; 
 int EMULATION_INTERCEPTED ; 
 int EMULATION_OK ; 
 int EMULATION_RESTART ; 
 int EMULTYPE_NO_DECODE ; 
 int EMULTYPE_SKIP ; 
 int EMULTYPE_TRAP_UD ; 
 int EMULTYPE_TRAP_UD_FORCED ; 
 int EMULTYPE_VMWARE_GP ; 
 scalar_t__ EXCPT_TRAP ; 
 int /*<<< orphan*/  GP_VECTOR ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int UD_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long X86_EFLAGS_IF ; 
 int X86_EFLAGS_RF ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  complete_emulated_mmio ; 
 int /*<<< orphan*/  complete_emulated_pio ; 
 int /*<<< orphan*/  FUNC2 (struct x86_emulate_ctxt*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct x86_emulate_ctxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*,int*) ; 
 int FUNC15 (struct kvm_vcpu*) ; 
 TYPE_5__* kvm_x86_ops ; 
 scalar_t__ FUNC16 (struct kvm_vcpu*,unsigned long,int,int) ; 
 scalar_t__ FUNC17 (struct x86_emulate_ctxt*,unsigned long,int) ; 
 unsigned long FUNC18 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC21 (unsigned long) ; 
 int FUNC22 (struct x86_emulate_ctxt*,void*,int) ; 
 int FUNC23 (struct x86_emulate_ctxt*) ; 

int FUNC24(struct kvm_vcpu *vcpu,
			    unsigned long cr2,
			    int emulation_type,
			    void *insn,
			    int insn_len)
{
	int r;
	struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
	bool writeback = true;
	bool write_fault_to_spt = vcpu->arch.write_fault_to_shadow_pgtable;

	vcpu->arch.l1tf_flush_l1d = true;

	/*
	 * Clear write_fault_to_shadow_pgtable here to ensure it is
	 * never reused.
	 */
	vcpu->arch.write_fault_to_shadow_pgtable = false;
	FUNC8(vcpu);

	if (!(emulation_type & EMULTYPE_NO_DECODE)) {
		FUNC5(vcpu);

		/*
		 * We will reenter on the same instruction since
		 * we do not set complete_userspace_io.  This does not
		 * handle watchpoints yet, those would be handled in
		 * the emulate_ops.
		 */
		if (!(emulation_type & EMULTYPE_SKIP) &&
		    FUNC14(vcpu, &r))
			return r;

		ctxt->interruptibility = 0;
		ctxt->have_exception = false;
		ctxt->exception.vector = -1;
		ctxt->perm_ok = false;

		ctxt->ud = emulation_type & EMULTYPE_TRAP_UD;

		r = FUNC22(ctxt, insn, insn_len);

		FUNC20(vcpu);
		++vcpu->stat.insn_emulation;
		if (r != EMULATION_OK)  {
			if ((emulation_type & EMULTYPE_TRAP_UD) ||
			    (emulation_type & EMULTYPE_TRAP_UD_FORCED)) {
				FUNC10(vcpu, UD_VECTOR);
				return 1;
			}
			if (FUNC16(vcpu, cr2, write_fault_to_spt,
						emulation_type))
				return 1;
			if (ctxt->have_exception) {
				/*
				 * #UD should result in just EMULATION_FAILED, and trap-like
				 * exception should not be encountered during decode.
				 */
				FUNC0(ctxt->exception.vector == UD_VECTOR ||
					     FUNC3(ctxt->exception.vector) == EXCPT_TRAP);
				FUNC6(vcpu);
				return 1;
			}
			return FUNC4(vcpu, emulation_type);
		}
	}

	if ((emulation_type & EMULTYPE_VMWARE_GP) &&
	    !FUNC7(ctxt)) {
		FUNC11(vcpu, GP_VECTOR, 0);
		return 1;
	}

	/*
	 * Note, EMULTYPE_SKIP is intended for use *only* by vendor callbacks
	 * for kvm_skip_emulated_instruction().  The caller is responsible for
	 * updating interruptibility state and injecting single-step #DBs.
	 */
	if (emulation_type & EMULTYPE_SKIP) {
		FUNC12(vcpu, ctxt->_eip);
		if (ctxt->eflags & X86_EFLAGS_RF)
			FUNC13(vcpu, ctxt->eflags & ~X86_EFLAGS_RF);
		return 1;
	}

	if (FUNC17(ctxt, cr2, emulation_type))
		return 1;

	/* this is needed for vmware backdoor interface to work since it
	   changes registers values  during IO operation */
	if (vcpu->arch.emulate_regs_need_sync_from_vcpu) {
		vcpu->arch.emulate_regs_need_sync_from_vcpu = false;
		FUNC2(ctxt);
	}

restart:
	/* Save the faulting GPA (cr2) in the address field */
	ctxt->exception.address = cr2;

	r = FUNC23(ctxt);

	if (r == EMULATION_INTERCEPTED)
		return 1;

	if (r == EMULATION_FAILED) {
		if (FUNC16(vcpu, cr2, write_fault_to_spt,
					emulation_type))
			return 1;

		return FUNC4(vcpu, emulation_type);
	}

	if (ctxt->have_exception) {
		r = 1;
		if (FUNC6(vcpu))
			return r;
	} else if (vcpu->arch.pio.count) {
		if (!vcpu->arch.pio.in) {
			/* FIXME: return into emulator if single-stepping.  */
			vcpu->arch.pio.count = 0;
		} else {
			writeback = false;
			vcpu->arch.complete_userspace_io = complete_emulated_pio;
		}
		r = 0;
	} else if (vcpu->mmio_needed) {
		++vcpu->stat.mmio_exits;

		if (!vcpu->mmio_is_write)
			writeback = false;
		r = 0;
		vcpu->arch.complete_userspace_io = complete_emulated_mmio;
	} else if (r == EMULATION_RESTART)
		goto restart;
	else
		r = 1;

	if (writeback) {
		unsigned long rflags = kvm_x86_ops->get_rflags(vcpu);
		FUNC19(vcpu, ctxt->interruptibility);
		vcpu->arch.emulate_regs_need_sync_to_vcpu = false;
		if (!ctxt->have_exception ||
		    FUNC3(ctxt->exception.vector) == EXCPT_TRAP) {
			FUNC12(vcpu, ctxt->eip);
			if (r && ctxt->tf)
				r = FUNC15(vcpu);
			FUNC1(vcpu, ctxt->eflags);
		}

		/*
		 * For STI, interrupts are shadowed; so KVM_REQ_EVENT will
		 * do nothing, and it will be requested again as soon as
		 * the shadow expires.  But we still need to check here,
		 * because POPF has no interrupt shadow.
		 */
		if (FUNC21((ctxt->eflags & ~rflags) & X86_EFLAGS_IF))
			FUNC9(KVM_REQ_EVENT, vcpu);
	} else
		vcpu->arch.emulate_regs_need_sync_to_vcpu = true;

	return r;
}