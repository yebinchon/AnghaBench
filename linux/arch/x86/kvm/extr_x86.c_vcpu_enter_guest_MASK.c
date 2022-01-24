#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int pending; } ;
struct TYPE_17__ {int /*<<< orphan*/  exit; } ;
struct TYPE_22__ {int halted; } ;
struct TYPE_13__ {int pending_ioapic_eoi; scalar_t__ mp_state; int switch_db_regs; int tsc_always_catchup; int apic_attention; int gpa_available; TYPE_6__* apic; int /*<<< orphan*/  last_guest_tsc; int /*<<< orphan*/  dr6; int /*<<< orphan*/ * eff_db; scalar_t__ apicv_active; TYPE_3__ exception; scalar_t__ nmi_pending; scalar_t__ smi_pending; TYPE_2__ hyperv; int /*<<< orphan*/  ioapic_handled_vectors; TYPE_7__ apf; } ;
struct TYPE_19__ {int /*<<< orphan*/  exits; int /*<<< orphan*/  req_event; } ;
struct kvm_vcpu {scalar_t__ mode; int guest_debug; TYPE_10__ arch; TYPE_12__* kvm; void* srcu_idx; int /*<<< orphan*/  vcpu_id; TYPE_4__ stat; TYPE_9__* run; scalar_t__ mmio_needed; } ;
typedef  scalar_t__ s64 ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct TYPE_23__ {int vector; } ;
struct TYPE_24__ {int /*<<< orphan*/  hyperv; void* exit_reason; TYPE_1__ system_event; TYPE_8__ eoi; } ;
struct TYPE_20__ {scalar_t__ advance_expire_delta; } ;
struct TYPE_21__ {TYPE_5__ lapic_timer; } ;
struct TYPE_15__ {int /*<<< orphan*/  srcu; } ;
struct TYPE_14__ {int (* handle_exit ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* cancel_injection ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* handle_exit_irqoff ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* sync_dirty_debug_regs ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* run ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* request_immediate_exit ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* sync_pir_to_irr ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* prepare_guest_switch ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* enable_irq_window ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* enable_nmi_window ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* enable_smi_window ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* get_vmcs12_pages ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EXITING_GUEST_MODE ; 
 scalar_t__ IN_GUEST_MODE ; 
 int KVM_DEBUGREG_RELOAD ; 
 int KVM_DEBUGREG_WONT_EXIT ; 
 void* KVM_EXIT_HYPERV ; 
 void* KVM_EXIT_IOAPIC_EOI ; 
 void* KVM_EXIT_SHUTDOWN ; 
 void* KVM_EXIT_SYSTEM_EVENT ; 
 void* KVM_EXIT_TPR_ACCESS ; 
 int KVM_GUESTDBG_USE_HW_BP ; 
 scalar_t__ KVM_MP_STATE_INIT_RECEIVED ; 
 scalar_t__ KVM_PROFILING ; 
 int /*<<< orphan*/  KVM_REQ_APF_HALT ; 
 int /*<<< orphan*/  KVM_REQ_APIC_PAGE_RELOAD ; 
 int /*<<< orphan*/  KVM_REQ_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  KVM_REQ_GET_VMCS12_PAGES ; 
 int /*<<< orphan*/  KVM_REQ_GLOBAL_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_HV_CRASH ; 
 int /*<<< orphan*/  KVM_REQ_HV_EXIT ; 
 int /*<<< orphan*/  KVM_REQ_HV_RESET ; 
 int /*<<< orphan*/  KVM_REQ_HV_STIMER ; 
 int /*<<< orphan*/  KVM_REQ_IOAPIC_EOI_EXIT ; 
 int /*<<< orphan*/  KVM_REQ_LOAD_CR3 ; 
 int /*<<< orphan*/  KVM_REQ_LOAD_EOI_EXITMAP ; 
 int /*<<< orphan*/  KVM_REQ_MASTERCLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_MIGRATE_TIMER ; 
 int /*<<< orphan*/  KVM_REQ_MMU_RELOAD ; 
 int /*<<< orphan*/  KVM_REQ_MMU_SYNC ; 
 int /*<<< orphan*/  KVM_REQ_NMI ; 
 int /*<<< orphan*/  KVM_REQ_PMI ; 
 int /*<<< orphan*/  KVM_REQ_PMU ; 
 int /*<<< orphan*/  KVM_REQ_REPORT_TPR_ACCESS ; 
 int /*<<< orphan*/  KVM_REQ_SCAN_IOAPIC ; 
 int /*<<< orphan*/  KVM_REQ_SMI ; 
 int /*<<< orphan*/  KVM_REQ_STEAL_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 int /*<<< orphan*/  KVM_REQ_TRIPLE_FAULT ; 
 int /*<<< orphan*/  KVM_SYSTEM_EVENT_CRASH ; 
 int /*<<< orphan*/  KVM_SYSTEM_EVENT_RESET ; 
 void* OUTSIDE_GUEST_MODE ; 
 scalar_t__ S64_MIN ; 
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC15 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_12__*) ; 
 int FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC21 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC25 (struct kvm_vcpu*) ; 
 int FUNC26 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC27 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC28 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC29 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC30 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC31 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (struct kvm_vcpu*) ; 
 unsigned long FUNC33 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC34 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC35 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC36 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC37 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC38 (struct kvm_vcpu*) ; 
 TYPE_11__* kvm_x86_ops ; 
 scalar_t__ FUNC39 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 () ; 
 scalar_t__ FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 () ; 
 int /*<<< orphan*/  FUNC45 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC46 (struct kvm_vcpu*) ; 
 scalar_t__ prof_on ; 
 int /*<<< orphan*/  FUNC47 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC48 () ; 
 int /*<<< orphan*/  FUNC49 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 () ; 
 void* FUNC54 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC56 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC57 (struct kvm_vcpu*) ; 
 int FUNC58 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC59 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC60 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC61 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC62 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC63 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC64 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC65 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC66 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC67 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC68 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC69 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC70 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC71 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC72 (int) ; 
 int /*<<< orphan*/  FUNC73 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC74 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC75 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC76(struct kvm_vcpu *vcpu)
{
	int r;
	bool req_int_win =
		FUNC4(vcpu) &&
		FUNC15(vcpu);

	bool req_immediate_exit = false;

	if (FUNC32(vcpu)) {
		if (FUNC14(KVM_REQ_GET_VMCS12_PAGES, vcpu)) {
			if (FUNC72(!kvm_x86_ops->get_vmcs12_pages(vcpu))) {
				r = 0;
				goto out;
			}
		}
		if (FUNC14(KVM_REQ_MMU_RELOAD, vcpu))
			FUNC28(vcpu);
		if (FUNC14(KVM_REQ_MIGRATE_TIMER, vcpu))
			FUNC3(vcpu);
		if (FUNC14(KVM_REQ_MASTERCLOCK_UPDATE, vcpu))
			FUNC18(vcpu->kvm);
		if (FUNC14(KVM_REQ_GLOBAL_CLOCK_UPDATE, vcpu))
			FUNC17(vcpu);
		if (FUNC14(KVM_REQ_CLOCK_UPDATE, vcpu)) {
			r = FUNC19(vcpu);
			if (FUNC72(r))
				goto out;
		}
		if (FUNC14(KVM_REQ_MMU_SYNC, vcpu))
			FUNC27(vcpu);
		if (FUNC14(KVM_REQ_LOAD_CR3, vcpu))
			FUNC25(vcpu);
		if (FUNC14(KVM_REQ_TLB_FLUSH, vcpu))
			FUNC37(vcpu, true);
		if (FUNC14(KVM_REQ_REPORT_TPR_ACCESS, vcpu)) {
			vcpu->run->exit_reason = KVM_EXIT_TPR_ACCESS;
			r = 0;
			goto out;
		}
		if (FUNC14(KVM_REQ_TRIPLE_FAULT, vcpu)) {
			vcpu->run->exit_reason = KVM_EXIT_SHUTDOWN;
			vcpu->mmio_needed = 0;
			r = 0;
			goto out;
		}
		if (FUNC14(KVM_REQ_APF_HALT, vcpu)) {
			/* Page is swapped out. Do synthetic halt */
			vcpu->arch.apf.halted = true;
			r = 1;
			goto out;
		}
		if (FUNC14(KVM_REQ_STEAL_UPDATE, vcpu))
			FUNC49(vcpu);
		if (FUNC14(KVM_REQ_SMI, vcpu))
			FUNC46(vcpu);
		if (FUNC14(KVM_REQ_NMI, vcpu))
			FUNC45(vcpu);
		if (FUNC14(KVM_REQ_PMU, vcpu))
			FUNC30(vcpu);
		if (FUNC14(KVM_REQ_PMI, vcpu))
			FUNC29(vcpu);
		if (FUNC14(KVM_REQ_IOAPIC_EOI_EXIT, vcpu)) {
			FUNC0(vcpu->arch.pending_ioapic_eoi > 255);
			if (FUNC68(vcpu->arch.pending_ioapic_eoi,
				     vcpu->arch.ioapic_handled_vectors)) {
				vcpu->run->exit_reason = KVM_EXIT_IOAPIC_EOI;
				vcpu->run->eoi.vector =
						vcpu->arch.pending_ioapic_eoi;
				r = 0;
				goto out;
			}
		}
		if (FUNC14(KVM_REQ_SCAN_IOAPIC, vcpu))
			FUNC75(vcpu);
		if (FUNC14(KVM_REQ_LOAD_EOI_EXITMAP, vcpu))
			FUNC74(vcpu);
		if (FUNC14(KVM_REQ_APIC_PAGE_RELOAD, vcpu))
			FUNC38(vcpu);
		if (FUNC14(KVM_REQ_HV_CRASH, vcpu)) {
			vcpu->run->exit_reason = KVM_EXIT_SYSTEM_EVENT;
			vcpu->run->system_event.type = KVM_SYSTEM_EVENT_CRASH;
			r = 0;
			goto out;
		}
		if (FUNC14(KVM_REQ_HV_RESET, vcpu)) {
			vcpu->run->exit_reason = KVM_EXIT_SYSTEM_EVENT;
			vcpu->run->system_event.type = KVM_SYSTEM_EVENT_RESET;
			r = 0;
			goto out;
		}
		if (FUNC14(KVM_REQ_HV_EXIT, vcpu)) {
			vcpu->run->exit_reason = KVM_EXIT_HYPERV;
			vcpu->run->hyperv = vcpu->arch.hyperv.exit;
			r = 0;
			goto out;
		}

		/*
		 * KVM_REQ_HV_STIMER has to be processed after
		 * KVM_REQ_CLOCK_UPDATE, because Hyper-V SynIC timers
		 * depend on the guest clock being up-to-date
		 */
		if (FUNC14(KVM_REQ_HV_STIMER, vcpu))
			FUNC20(vcpu);
	}

	if (FUNC14(KVM_REQ_EVENT, vcpu) || req_int_win) {
		++vcpu->stat.req_event;
		FUNC12(vcpu);
		if (vcpu->arch.mp_state == KVM_MP_STATE_INIT_RECEIVED) {
			r = 1;
			goto out;
		}

		if (FUNC9(vcpu, req_int_win) != 0)
			req_immediate_exit = true;
		else {
			/* Enable SMI/NMI/IRQ window open exits if needed.
			 *
			 * SMIs have three cases:
			 * 1) They can be nested, and then there is nothing to
			 *    do here because RSM will cause a vmexit anyway.
			 * 2) There is an ISA-specific reason why SMI cannot be
			 *    injected, and the moment when this changes can be
			 *    intercepted.
			 * 3) Or the SMI can be pending because
			 *    inject_pending_event has completed the injection
			 *    of an IRQ or NMI from the previous vmexit, and
			 *    then we request an immediate exit to inject the
			 *    SMI.
			 */
			if (vcpu->arch.smi_pending && !FUNC10(vcpu))
				if (!kvm_x86_ops->enable_smi_window(vcpu))
					req_immediate_exit = true;
			if (vcpu->arch.nmi_pending)
				kvm_x86_ops->enable_nmi_window(vcpu);
			if (FUNC16(vcpu) || req_int_win)
				kvm_x86_ops->enable_irq_window(vcpu);
			FUNC1(vcpu->arch.exception.pending);
		}

		if (FUNC21(vcpu)) {
			FUNC73(vcpu);
			FUNC23(vcpu);
		}
	}

	r = FUNC26(vcpu);
	if (FUNC72(r)) {
		goto cancel_injection;
	}

	FUNC43();

	kvm_x86_ops->prepare_guest_switch(vcpu);

	/*
	 * Disable IRQs before setting IN_GUEST_MODE.  Posted interrupt
	 * IPI are then delayed after guest entry, which ensures that they
	 * result in virtual interrupt delivery.
	 */
	FUNC40();
	vcpu->mode = IN_GUEST_MODE;

	FUNC55(&vcpu->kvm->srcu, vcpu->srcu_idx);

	/*
	 * 1) We should set ->mode before checking ->requests.  Please see
	 * the comment in kvm_vcpu_exiting_guest_mode().
	 *
	 * 2) For APICv, we should set ->mode before checking PID.ON. This
	 * pairs with the memory barrier implicit in pi_test_and_set_on
	 * (see vmx_deliver_posted_interrupt).
	 *
	 * 3) This also orders the write to mode from any reads to the page
	 * tables done while the VCPU is running.  Please see the comment
	 * in kvm_flush_remote_tlbs.
	 */
	FUNC52();

	/*
	 * This handles the case where a posted interrupt was
	 * notified with kvm_vcpu_kick.
	 */
	if (FUNC21(vcpu) && vcpu->arch.apicv_active)
		kvm_x86_ops->sync_pir_to_irr(vcpu);

	if (vcpu->mode == EXITING_GUEST_MODE || FUNC32(vcpu)
	    || FUNC42() || FUNC51(current)) {
		vcpu->mode = OUTSIDE_GUEST_MODE;
		FUNC53();
		FUNC41();
		FUNC44();
		vcpu->srcu_idx = FUNC54(&vcpu->kvm->srcu);
		r = 1;
		goto cancel_injection;
	}

	if (req_immediate_exit) {
		FUNC24(KVM_REQ_EVENT, vcpu);
		kvm_x86_ops->request_immediate_exit(vcpu);
	}

	FUNC70(vcpu->vcpu_id);
	FUNC5();

	/* The preempt notifier should have taken care of the FPU already.  */
	FUNC2(FUNC69(TIF_NEED_FPU_LOAD));

	if (FUNC72(vcpu->arch.switch_db_regs)) {
		FUNC50(0, 7);
		FUNC50(vcpu->arch.eff_db[0], 0);
		FUNC50(vcpu->arch.eff_db[1], 1);
		FUNC50(vcpu->arch.eff_db[2], 2);
		FUNC50(vcpu->arch.eff_db[3], 3);
		FUNC50(vcpu->arch.dr6, 6);
		vcpu->arch.switch_db_regs &= ~KVM_DEBUGREG_RELOAD;
	}

	kvm_x86_ops->run(vcpu);

	/*
	 * Do this here before restoring debug registers on the host.  And
	 * since we do this before handling the vmexit, a DR access vmexit
	 * can (a) read the correct value of the debug registers, (b) set
	 * KVM_DEBUGREG_WONT_EXIT again.
	 */
	if (FUNC72(vcpu->arch.switch_db_regs & KVM_DEBUGREG_WONT_EXIT)) {
		FUNC1(vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP);
		kvm_x86_ops->sync_dirty_debug_regs(vcpu);
		FUNC34(vcpu);
		FUNC35(vcpu);
		FUNC36(vcpu);
		vcpu->arch.switch_db_regs &= ~KVM_DEBUGREG_RELOAD;
	}

	/*
	 * If the guest has used debug registers, at least dr7
	 * will be disabled while returning to the host.
	 * If we don't have active breakpoints in the host, we don't
	 * care about the messed up debug address registers. But if
	 * we have some of them active, restore the old state.
	 */
	if (FUNC7())
		FUNC8();

	vcpu->arch.last_guest_tsc = FUNC31(vcpu, FUNC48());

	vcpu->mode = OUTSIDE_GUEST_MODE;
	FUNC53();

	kvm_x86_ops->handle_exit_irqoff(vcpu);

	/*
	 * Consume any pending interrupts, including the possible source of
	 * VM-Exit on SVM and any ticks that occur between VM-Exit and now.
	 * An instruction is required after local_irq_enable() to fully unblock
	 * interrupts on processors that implement an interrupt shadow, the
	 * stat.exits increment will do nicely.
	 */
	FUNC13(vcpu);
	FUNC41();
	++vcpu->stat.exits;
	FUNC40();
	FUNC11(vcpu);

	FUNC6();
	if (FUNC39(vcpu)) {
		s64 delta = vcpu->arch.apic->lapic_timer.advance_expire_delta;
		if (delta != S64_MIN) {
			FUNC71(vcpu->vcpu_id, delta);
			vcpu->arch.apic->lapic_timer.advance_expire_delta = S64_MIN;
		}
	}

	FUNC41();
	FUNC44();

	vcpu->srcu_idx = FUNC54(&vcpu->kvm->srcu);

	/*
	 * Profile KVM exit RIPs:
	 */
	if (FUNC72(prof_on == KVM_PROFILING)) {
		unsigned long rip = FUNC33(vcpu);
		FUNC47(KVM_PROFILING, (void *)rip);
	}

	if (FUNC72(vcpu->arch.tsc_always_catchup))
		FUNC24(KVM_REQ_CLOCK_UPDATE, vcpu);

	if (vcpu->arch.apic_attention)
		FUNC22(vcpu);

	vcpu->arch.gpa_available = false;
	r = kvm_x86_ops->handle_exit(vcpu);
	return r;

cancel_injection:
	kvm_x86_ops->cancel_injection(vcpu);
	if (FUNC72(vcpu->arch.apic_attention))
		FUNC22(vcpu);
out:
	return r;
}