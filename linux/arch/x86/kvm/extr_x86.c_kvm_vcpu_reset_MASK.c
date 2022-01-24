#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mpx_bndreg_state {int dummy; } ;
struct mpx_bndcsr {int dummy; } ;
struct TYPE_10__ {int halted; scalar_t__ msr_val; } ;
struct TYPE_9__ {scalar_t__ msr_val; } ;
struct TYPE_8__ {int pending; } ;
struct TYPE_13__ {int nmi_injected; void* db; int smbase; void* regs; scalar_t__ ia32_xss; int /*<<< orphan*/  regs_dirty; int /*<<< orphan*/  regs_avail; int /*<<< orphan*/  xcr0; scalar_t__ msr_misc_features_enables; TYPE_5__* guest_fpu; TYPE_3__ apf; TYPE_2__ st; scalar_t__ cr2; int /*<<< orphan*/  dr7; int /*<<< orphan*/  dr6; TYPE_1__ exception; scalar_t__ nmi_pending; int /*<<< orphan*/  nmi_queued; scalar_t__ smi_count; scalar_t__ smi_pending; scalar_t__ hflags; } ;
struct kvm_vcpu {TYPE_6__ arch; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* vcpu_reset ) (struct kvm_vcpu*,int) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  xsave; } ;
struct TYPE_12__ {TYPE_4__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR6_INIT ; 
 int /*<<< orphan*/  DR7_FIXED_1 ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  XFEATURE_BNDCSR ; 
 int /*<<< orphan*/  XFEATURE_BNDREGS ; 
 int /*<<< orphan*/  XFEATURE_MASK_FP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 TYPE_7__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int) ; 

void FUNC18(struct kvm_vcpu *vcpu, bool init_event)
{
	FUNC6(vcpu, init_event);

	vcpu->arch.hflags = 0;

	vcpu->arch.smi_pending = 0;
	vcpu->arch.smi_count = 0;
	FUNC0(&vcpu->arch.nmi_queued, 0);
	vcpu->arch.nmi_pending = 0;
	vcpu->arch.nmi_injected = false;
	FUNC5(vcpu);
	FUNC4(vcpu);
	vcpu->arch.exception.pending = false;

	FUNC16(vcpu->arch.db, 0, sizeof(vcpu->arch.db));
	FUNC12(vcpu);
	vcpu->arch.dr6 = DR6_INIT;
	FUNC13(vcpu);
	vcpu->arch.dr7 = DR7_FIXED_1;
	FUNC14(vcpu);

	vcpu->arch.cr2 = 0;

	FUNC8(KVM_REQ_EVENT, vcpu);
	vcpu->arch.apf.msr_val = 0;
	vcpu->arch.st.msr_val = 0;

	FUNC15(vcpu);

	FUNC3(vcpu);
	FUNC2(vcpu);
	vcpu->arch.apf.halted = false;

	if (FUNC9()) {
		void *mpx_state_buffer;

		/*
		 * To avoid have the INIT path from kvm_apic_has_events() that be
		 * called with loaded FPU and does not let userspace fix the state.
		 */
		if (init_event)
			FUNC11(vcpu);
		mpx_state_buffer = FUNC1(&vcpu->arch.guest_fpu->state.xsave,
					XFEATURE_BNDREGS);
		if (mpx_state_buffer)
			FUNC16(mpx_state_buffer, 0, sizeof(struct mpx_bndreg_state));
		mpx_state_buffer = FUNC1(&vcpu->arch.guest_fpu->state.xsave,
					XFEATURE_BNDCSR);
		if (mpx_state_buffer)
			FUNC16(mpx_state_buffer, 0, sizeof(struct mpx_bndcsr));
		if (init_event)
			FUNC7(vcpu);
	}

	if (!init_event) {
		FUNC10(vcpu);
		vcpu->arch.smbase = 0x30000;

		vcpu->arch.msr_misc_features_enables = 0;

		vcpu->arch.xcr0 = XFEATURE_MASK_FP;
	}

	FUNC16(vcpu->arch.regs, 0, sizeof(vcpu->arch.regs));
	vcpu->arch.regs_avail = ~0;
	vcpu->arch.regs_dirty = ~0;

	vcpu->arch.ia32_xss = 0;

	kvm_x86_ops->vcpu_reset(vcpu, init_event);
}