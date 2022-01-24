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
struct TYPE_5__ {scalar_t__ pending; } ;
struct TYPE_7__ {scalar_t__ singlestep_rip; int /*<<< orphan*/ * db; int /*<<< orphan*/ * eff_db; int /*<<< orphan*/  guest_debug_dr7; TYPE_1__ exception; } ;
struct kvm_vcpu {int guest_debug; TYPE_3__ arch; } ;
struct TYPE_6__ {int /*<<< orphan*/ * debugreg; } ;
struct kvm_guest_debug {int control; TYPE_2__ arch; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* update_bp_intercept ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BP_VECTOR ; 
 int /*<<< orphan*/  DB_VECTOR ; 
 int EBUSY ; 
 int KVM_GUESTDBG_ENABLE ; 
 int KVM_GUESTDBG_INJECT_BP ; 
 int KVM_GUESTDBG_INJECT_DB ; 
 int KVM_GUESTDBG_SINGLESTEP ; 
 int KVM_GUESTDBG_USE_HW_BP ; 
 int KVM_NR_DB_REGS ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 

int FUNC9(struct kvm_vcpu *vcpu,
					struct kvm_guest_debug *dbg)
{
	unsigned long rflags;
	int i, r;

	FUNC7(vcpu);

	if (dbg->control & (KVM_GUESTDBG_INJECT_DB | KVM_GUESTDBG_INJECT_BP)) {
		r = -EBUSY;
		if (vcpu->arch.exception.pending)
			goto out;
		if (dbg->control & KVM_GUESTDBG_INJECT_DB)
			FUNC2(vcpu, DB_VECTOR);
		else
			FUNC2(vcpu, BP_VECTOR);
	}

	/*
	 * Read rflags as long as potentially injected trace flags are still
	 * filtered out.
	 */
	rflags = FUNC1(vcpu);

	vcpu->guest_debug = dbg->control;
	if (!(vcpu->guest_debug & KVM_GUESTDBG_ENABLE))
		vcpu->guest_debug = 0;

	if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP) {
		for (i = 0; i < KVM_NR_DB_REGS; ++i)
			vcpu->arch.eff_db[i] = dbg->arch.debugreg[i];
		vcpu->arch.guest_debug_dr7 = dbg->arch.debugreg[7];
	} else {
		for (i = 0; i < KVM_NR_DB_REGS; i++)
			vcpu->arch.eff_db[i] = vcpu->arch.db[i];
	}
	FUNC5(vcpu);

	if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
		vcpu->arch.singlestep_rip = FUNC3(vcpu) +
			FUNC0(vcpu, VCPU_SREG_CS);

	/*
	 * Trigger an rflags update that will inject or remove the trace
	 * flags.
	 */
	FUNC4(vcpu, rflags);

	kvm_x86_ops->update_bp_intercept(vcpu);

	r = 0;

out:
	FUNC8(vcpu);
	return r;
}