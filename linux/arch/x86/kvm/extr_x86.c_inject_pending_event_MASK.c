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
struct TYPE_6__ {int injected; int pending; scalar_t__ nr; int /*<<< orphan*/  error_code; int /*<<< orphan*/  has_error_code; } ;
struct TYPE_5__ {scalar_t__ injected; } ;
struct TYPE_7__ {int nmi_injected; int dr7; int smi_pending; scalar_t__ nmi_pending; int /*<<< orphan*/  smi_count; TYPE_2__ exception; TYPE_1__ interrupt; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_8__ {int (* check_nested_events ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* set_irq ) (struct kvm_vcpu*) ;scalar_t__ (* interrupt_allowed ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* set_nmi ) (struct kvm_vcpu*) ;scalar_t__ (* nmi_allowed ) (struct kvm_vcpu*) ;scalar_t__ (* smi_allowed ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* queue_exception ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 scalar_t__ DB_VECTOR ; 
 int DR7_GD ; 
 scalar_t__ EXCPT_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int X86_EFLAGS_RF ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 int FUNC18 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC20 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC21 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*) ; 
 int FUNC23 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct kvm_vcpu *vcpu, bool req_int_win)
{
	int r;

	/* try to reinject previous events if any */

	if (vcpu->arch.exception.injected)
		kvm_x86_ops->queue_exception(vcpu);
	/*
	 * Do not inject an NMI or interrupt if there is a pending
	 * exception.  Exceptions and interrupts are recognized at
	 * instruction boundaries, i.e. the start of an instruction.
	 * Trap-like exceptions, e.g. #DB, have higher priority than
	 * NMIs and interrupts, i.e. traps are recognized before an
	 * NMI/interrupt that's pending on the same instruction.
	 * Fault-like exceptions, e.g. #GP and #PF, are the lowest
	 * priority, but are only generated (pended) during instruction
	 * execution, i.e. a pending fault-like exception means the
	 * fault occurred on the *previous* instruction and must be
	 * serviced prior to recognizing any new events in order to
	 * fully complete the previous instruction.
	 */
	else if (!vcpu->arch.exception.pending) {
		if (vcpu->arch.nmi_injected)
			kvm_x86_ops->set_nmi(vcpu);
		else if (vcpu->arch.interrupt.injected)
			kvm_x86_ops->set_irq(vcpu);
	}

	/*
	 * Call check_nested_events() even if we reinjected a previous event
	 * in order for caller to determine if it should require immediate-exit
	 * from L2 to L1 due to pending L1 events which require exit
	 * from L2 to L1.
	 */
	if (FUNC4(vcpu) && kvm_x86_ops->check_nested_events) {
		r = kvm_x86_ops->check_nested_events(vcpu, req_int_win);
		if (r != 0)
			return r;
	}

	/* try to inject new event if pending */
	if (vcpu->arch.exception.pending) {
		FUNC24(vcpu->arch.exception.nr,
					vcpu->arch.exception.has_error_code,
					vcpu->arch.exception.error_code);

		FUNC0(vcpu->arch.exception.injected);
		vcpu->arch.exception.pending = false;
		vcpu->arch.exception.injected = true;

		if (FUNC3(vcpu->arch.exception.nr) == EXCPT_FAULT)
			FUNC1(vcpu, FUNC10(vcpu) |
					     X86_EFLAGS_RF);

		if (vcpu->arch.exception.nr == DB_VECTOR) {
			/*
			 * This code assumes that nSVM doesn't use
			 * check_nested_events(). If it does, the
			 * DR6/DR7 changes should happen before L1
			 * gets a #VMEXIT for an intercepted #DB in
			 * L2.  (Under VMX, on the other hand, the
			 * DR6/DR7 changes should not happen in the
			 * event of a VM-exit to L1 for an intercepted
			 * #DB in L2.)
			 */
			FUNC8(vcpu);
			if (vcpu->arch.dr7 & DR7_GD) {
				vcpu->arch.dr7 &= ~DR7_GD;
				FUNC12(vcpu);
			}
		}

		kvm_x86_ops->queue_exception(vcpu);
	}

	/* Don't consider new event if we re-injected an event */
	if (FUNC9(vcpu))
		return 0;

	if (vcpu->arch.smi_pending && !FUNC5(vcpu) &&
	    kvm_x86_ops->smi_allowed(vcpu)) {
		vcpu->arch.smi_pending = false;
		++vcpu->arch.smi_count;
		FUNC2(vcpu);
	} else if (vcpu->arch.nmi_pending && kvm_x86_ops->nmi_allowed(vcpu)) {
		--vcpu->arch.nmi_pending;
		vcpu->arch.nmi_injected = true;
		kvm_x86_ops->set_nmi(vcpu);
	} else if (FUNC7(vcpu)) {
		/*
		 * Because interrupts can be injected asynchronously, we are
		 * calling check_nested_events again here to avoid a race condition.
		 * See https://lkml.org/lkml/2014/7/2/60 for discussion about this
		 * proposal and current concerns.  Perhaps we should be setting
		 * KVM_REQ_EVENT only on certain events and not unconditionally?
		 */
		if (FUNC4(vcpu) && kvm_x86_ops->check_nested_events) {
			r = kvm_x86_ops->check_nested_events(vcpu, req_int_win);
			if (r != 0)
				return r;
		}
		if (kvm_x86_ops->interrupt_allowed(vcpu)) {
			FUNC11(vcpu, FUNC6(vcpu),
					    false);
			kvm_x86_ops->set_irq(vcpu);
		}
	}

	return 0;
}