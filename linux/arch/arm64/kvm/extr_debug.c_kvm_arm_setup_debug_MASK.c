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
struct TYPE_3__ {int /*<<< orphan*/ * dbg_wvr; int /*<<< orphan*/ * dbg_wcr; int /*<<< orphan*/ * dbg_bvr; int /*<<< orphan*/ * dbg_bcr; } ;
struct TYPE_4__ {int flags; int mdcr_el2; TYPE_1__ vcpu_debug_state; TYPE_1__* debug_ptr; TYPE_1__ external_debug_state; } ;
struct kvm_vcpu {int guest_debug; TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long DBG_MDSCR_KDE ; 
 unsigned long DBG_MDSCR_MDE ; 
 unsigned long DBG_MDSCR_SS ; 
 unsigned long DBG_SPSR_SS ; 
 int KVM_ARM64_DEBUG_DIRTY ; 
 int KVM_GUESTDBG_SINGLESTEP ; 
 int KVM_GUESTDBG_USE_HW ; 
 int MDCR_EL2_HPMN_MASK ; 
 int MDCR_EL2_TDA ; 
 int MDCR_EL2_TDE ; 
 int MDCR_EL2_TDOSA ; 
 int MDCR_EL2_TDRA ; 
 int MDCR_EL2_TPM ; 
 int MDCR_EL2_TPMCR ; 
 int MDCR_EL2_TPMS ; 
 int /*<<< orphan*/  MDSCR_EL1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  mdcr_el2 ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 
 unsigned long* FUNC8 (struct kvm_vcpu*) ; 
 unsigned long FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC11(struct kvm_vcpu *vcpu)
{
	bool trap_debug = !(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY);
	unsigned long mdscr;

	FUNC7(vcpu, vcpu->guest_debug);

	/*
	 * This also clears MDCR_EL2_E2PB_MASK to disable guest access
	 * to the profiling buffer.
	 */
	vcpu->arch.mdcr_el2 = FUNC1(mdcr_el2) & MDCR_EL2_HPMN_MASK;
	vcpu->arch.mdcr_el2 |= (MDCR_EL2_TPM |
				MDCR_EL2_TPMS |
				MDCR_EL2_TPMCR |
				MDCR_EL2_TDRA |
				MDCR_EL2_TDOSA);

	/* Is Guest debugging in effect? */
	if (vcpu->guest_debug) {
		/* Route all software debug exceptions to EL2 */
		vcpu->arch.mdcr_el2 |= MDCR_EL2_TDE;

		/* Save guest debug state */
		FUNC4(vcpu);

		/*
		 * Single Step (ARM ARM D2.12.3 The software step state
		 * machine)
		 *
		 * If we are doing Single Step we need to manipulate
		 * the guest's MDSCR_EL1.SS and PSTATE.SS. Once the
		 * step has occurred the hypervisor will trap the
		 * debug exception and we return to userspace.
		 *
		 * If the guest attempts to single step its userspace
		 * we would have to deal with a trapped exception
		 * while in the guest kernel. Because this would be
		 * hard to unwind we suppress the guest's ability to
		 * do so by masking MDSCR_EL.SS.
		 *
		 * This confuses guest debuggers which use
		 * single-step behind the scenes but everything
		 * returns to normal once the host is no longer
		 * debugging the system.
		 */
		if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP) {
			*FUNC8(vcpu) |=  DBG_SPSR_SS;
			mdscr = FUNC9(vcpu, MDSCR_EL1);
			mdscr |= DBG_MDSCR_SS;
			FUNC10(vcpu, mdscr, MDSCR_EL1);
		} else {
			mdscr = FUNC9(vcpu, MDSCR_EL1);
			mdscr &= ~DBG_MDSCR_SS;
			FUNC10(vcpu, mdscr, MDSCR_EL1);
		}

		FUNC5("SPSR_EL2", *FUNC8(vcpu));

		/*
		 * HW Breakpoints and watchpoints
		 *
		 * We simply switch the debug_ptr to point to our new
		 * external_debug_state which has been populated by the
		 * debug ioctl. The existing KVM_ARM64_DEBUG_DIRTY
		 * mechanism ensures the registers are updated on the
		 * world switch.
		 */
		if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW) {
			/* Enable breakpoints/watchpoints */
			mdscr = FUNC9(vcpu, MDSCR_EL1);
			mdscr |= DBG_MDSCR_MDE;
			FUNC10(vcpu, mdscr, MDSCR_EL1);

			vcpu->arch.debug_ptr = &vcpu->arch.external_debug_state;
			vcpu->arch.flags |= KVM_ARM64_DEBUG_DIRTY;
			trap_debug = true;

			FUNC6("BKPTS", FUNC2(),
						&vcpu->arch.debug_ptr->dbg_bcr[0],
						&vcpu->arch.debug_ptr->dbg_bvr[0]);

			FUNC6("WAPTS", FUNC3(),
						&vcpu->arch.debug_ptr->dbg_wcr[0],
						&vcpu->arch.debug_ptr->dbg_wvr[0]);
		}
	}

	FUNC0(!vcpu->guest_debug &&
		vcpu->arch.debug_ptr != &vcpu->arch.vcpu_debug_state);

	/* Trap debug register access */
	if (trap_debug)
		vcpu->arch.mdcr_el2 |= MDCR_EL2_TDA;

	/* If KDE or MDE are set, perform a full save/restore cycle. */
	if (FUNC9(vcpu, MDSCR_EL1) & (DBG_MDSCR_KDE | DBG_MDSCR_MDE))
		vcpu->arch.flags |= KVM_ARM64_DEBUG_DIRTY;

	FUNC5("MDCR_EL2", vcpu->arch.mdcr_el2);
	FUNC5("MDSCR_EL1", FUNC9(vcpu, MDSCR_EL1));
}