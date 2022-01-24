#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct vmcb_control_area {int exit_int_info; int event_inj; int /*<<< orphan*/  tsc_offset; int /*<<< orphan*/  int_ctl; int /*<<< orphan*/  pause_filter_thresh; int /*<<< orphan*/  pause_filter_count; scalar_t__ event_inj_err; scalar_t__ tlb_ctl; scalar_t__ exit_int_info_err; int /*<<< orphan*/  next_rip; int /*<<< orphan*/  exit_info_2; int /*<<< orphan*/  exit_info_1; int /*<<< orphan*/  exit_code_hi; int /*<<< orphan*/  exit_code; int /*<<< orphan*/  int_state; int /*<<< orphan*/  int_vector; } ;
struct TYPE_24__ {int cr0; scalar_t__ cpl; scalar_t__ dr7; int /*<<< orphan*/  rip; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rax; int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr4; int /*<<< orphan*/  efer; int /*<<< orphan*/  rflags; int /*<<< orphan*/  idtr; int /*<<< orphan*/  gdtr; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; int /*<<< orphan*/  dr6; int /*<<< orphan*/  cr2; } ;
struct vmcb {struct vmcb_control_area control; TYPE_1__ save; } ;
struct TYPE_25__ {int hflags; int nmi_injected; int /*<<< orphan*/  cr3; int /*<<< orphan*/  tsc_offset; int /*<<< orphan*/  cr4; int /*<<< orphan*/  efer; } ;
struct TYPE_27__ {TYPE_2__ arch; } ;
struct TYPE_26__ {scalar_t__ nested_cr3; int /*<<< orphan*/  vmcb; struct vmcb* hsave; } ;
struct vcpu_svm {TYPE_4__ vcpu; struct vmcb* vmcb; TYPE_3__ nested; scalar_t__ nrips_enabled; } ;
struct kvm_host_map {struct vmcb* hva; } ;

/* Variables and functions */
 int EINVAL ; 
 int HF_VINTR_MASK ; 
 int /*<<< orphan*/  KVM_ISA_SVM ; 
 int SVM_EVTINJ_VALID ; 
 int /*<<< orphan*/  V_INTR_MASKING_MASK ; 
 int X86_CR0_PE ; 
 int /*<<< orphan*/  FUNC0 (struct vmcb*,struct vmcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,struct kvm_host_map*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (struct vmcb*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 scalar_t__ npt_enabled ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct vcpu_svm *svm)
{
	int rc;
	struct vmcb *nested_vmcb;
	struct vmcb *hsave = svm->nested.hsave;
	struct vmcb *vmcb = svm->vmcb;
	struct kvm_host_map map;

	FUNC24(vmcb->control.exit_code,
				       vmcb->control.exit_info_1,
				       vmcb->control.exit_info_2,
				       vmcb->control.exit_int_info,
				       vmcb->control.exit_int_info_err,
				       KVM_ISA_SVM);

	rc = FUNC16(&svm->vcpu, FUNC2(svm->nested.vmcb), &map);
	if (rc) {
		if (rc == -EINVAL)
			FUNC6(&svm->vcpu, 0);
		return 1;
	}

	nested_vmcb = map.hva;

	/* Exit Guest-Mode */
	FUNC18(&svm->vcpu);
	svm->nested.vmcb = 0;

	/* Give the current vmcb to the guest */
	FUNC1(svm);

	nested_vmcb->save.es     = vmcb->save.es;
	nested_vmcb->save.cs     = vmcb->save.cs;
	nested_vmcb->save.ss     = vmcb->save.ss;
	nested_vmcb->save.ds     = vmcb->save.ds;
	nested_vmcb->save.gdtr   = vmcb->save.gdtr;
	nested_vmcb->save.idtr   = vmcb->save.idtr;
	nested_vmcb->save.efer   = svm->vcpu.arch.efer;
	nested_vmcb->save.cr0    = FUNC10(&svm->vcpu);
	nested_vmcb->save.cr3    = FUNC11(&svm->vcpu);
	nested_vmcb->save.cr2    = vmcb->save.cr2;
	nested_vmcb->save.cr4    = svm->vcpu.arch.cr4;
	nested_vmcb->save.rflags = FUNC5(&svm->vcpu);
	nested_vmcb->save.rip    = vmcb->save.rip;
	nested_vmcb->save.rsp    = vmcb->save.rsp;
	nested_vmcb->save.rax    = vmcb->save.rax;
	nested_vmcb->save.dr7    = vmcb->save.dr7;
	nested_vmcb->save.dr6    = vmcb->save.dr6;
	nested_vmcb->save.cpl    = vmcb->save.cpl;

	nested_vmcb->control.int_ctl           = vmcb->control.int_ctl;
	nested_vmcb->control.int_vector        = vmcb->control.int_vector;
	nested_vmcb->control.int_state         = vmcb->control.int_state;
	nested_vmcb->control.exit_code         = vmcb->control.exit_code;
	nested_vmcb->control.exit_code_hi      = vmcb->control.exit_code_hi;
	nested_vmcb->control.exit_info_1       = vmcb->control.exit_info_1;
	nested_vmcb->control.exit_info_2       = vmcb->control.exit_info_2;
	nested_vmcb->control.exit_int_info     = vmcb->control.exit_int_info;
	nested_vmcb->control.exit_int_info_err = vmcb->control.exit_int_info_err;

	if (svm->nrips_enabled)
		nested_vmcb->control.next_rip  = vmcb->control.next_rip;

	/*
	 * If we emulate a VMRUN/#VMEXIT in the same host #vmexit cycle we have
	 * to make sure that we do not lose injected events. So check event_inj
	 * here and copy it to exit_int_info if it is valid.
	 * Exit_int_info and event_inj can't be both valid because the case
	 * below only happens on a VMRUN instruction intercept which has
	 * no valid exit_int_info set.
	 */
	if (vmcb->control.event_inj & SVM_EVTINJ_VALID) {
		struct vmcb_control_area *nc = &nested_vmcb->control;

		nc->exit_int_info     = vmcb->control.event_inj;
		nc->exit_int_info_err = vmcb->control.event_inj_err;
	}

	nested_vmcb->control.tlb_ctl           = 0;
	nested_vmcb->control.event_inj         = 0;
	nested_vmcb->control.event_inj_err     = 0;

	nested_vmcb->control.pause_filter_count =
		svm->vmcb->control.pause_filter_count;
	nested_vmcb->control.pause_filter_thresh =
		svm->vmcb->control.pause_filter_thresh;

	/* We always set V_INTR_MASKING and remember the old value in hflags */
	if (!(svm->vcpu.arch.hflags & HF_VINTR_MASK))
		nested_vmcb->control.int_ctl &= ~V_INTR_MASKING_MASK;

	/* Restore the original control entries */
	FUNC0(vmcb, hsave);

	svm->vcpu.arch.tsc_offset = svm->vmcb->control.tsc_offset;
	FUNC3(&svm->vcpu);
	FUNC4(&svm->vcpu);

	svm->nested.nested_cr3 = 0;

	/* Restore selected save entries */
	svm->vmcb->save.es = hsave->save.es;
	svm->vmcb->save.cs = hsave->save.cs;
	svm->vmcb->save.ss = hsave->save.ss;
	svm->vmcb->save.ds = hsave->save.ds;
	svm->vmcb->save.gdtr = hsave->save.gdtr;
	svm->vmcb->save.idtr = hsave->save.idtr;
	FUNC15(&svm->vcpu, hsave->save.rflags);
	FUNC23(&svm->vcpu, hsave->save.efer);
	FUNC21(&svm->vcpu, hsave->save.cr0 | X86_CR0_PE);
	FUNC22(&svm->vcpu, hsave->save.cr4);
	if (npt_enabled) {
		svm->vmcb->save.cr3 = hsave->save.cr3;
		svm->vcpu.arch.cr3 = hsave->save.cr3;
	} else {
		(void)FUNC14(&svm->vcpu, hsave->save.cr3);
	}
	FUNC9(&svm->vcpu, hsave->save.rax);
	FUNC13(&svm->vcpu, hsave->save.rsp);
	FUNC12(&svm->vcpu, hsave->save.rip);
	svm->vmcb->save.dr7 = 0;
	svm->vmcb->save.cpl = 0;
	svm->vmcb->control.exit_int_info = 0;

	FUNC19(svm->vmcb);

	FUNC17(&svm->vcpu, &map, true);

	FUNC20(&svm->vcpu);
	FUNC8(&svm->vcpu);
	FUNC7(&svm->vcpu);

	/*
	 * Drop what we picked up for L2 via svm_complete_interrupts() so it
	 * doesn't end up in L1.
	 */
	svm->vcpu.arch.nmi_injected = false;
	FUNC3(&svm->vcpu);
	FUNC4(&svm->vcpu);

	return 0;
}