#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_25__ {int nested_ctl; int msrpm_base_pa; int iopm_base_pa; int int_ctl; int /*<<< orphan*/  pause_filter_thresh; int /*<<< orphan*/  pause_filter_count; int /*<<< orphan*/  event_inj_err; int /*<<< orphan*/  event_inj; int /*<<< orphan*/  int_state; int /*<<< orphan*/  int_vector; int /*<<< orphan*/  virt_ext; scalar_t__ tsc_offset; int /*<<< orphan*/  intercept; int /*<<< orphan*/  intercept_exceptions; int /*<<< orphan*/  intercept_dr; int /*<<< orphan*/  intercept_cr; int /*<<< orphan*/  nested_cr3; } ;
struct TYPE_28__ {int /*<<< orphan*/  cpl; int /*<<< orphan*/  dr6; int /*<<< orphan*/  dr7; int /*<<< orphan*/  rip; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rax; int /*<<< orphan*/  cr2; int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr4; int /*<<< orphan*/  cr0; int /*<<< orphan*/  efer; int /*<<< orphan*/  rflags; int /*<<< orphan*/  idtr; int /*<<< orphan*/  gdtr; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; } ;
struct vmcb {TYPE_3__ control; TYPE_6__ save; } ;
struct TYPE_24__ {int vmcb_msrpm; int vmcb_iopm; int /*<<< orphan*/  vmcb; int /*<<< orphan*/  intercept; int /*<<< orphan*/  intercept_exceptions; int /*<<< orphan*/  intercept_dr; int /*<<< orphan*/  intercept_cr; int /*<<< orphan*/  nested_cr3; } ;
struct TYPE_27__ {int hflags; int /*<<< orphan*/  tsc_offset; int /*<<< orphan*/  cr2; int /*<<< orphan*/  cr3; } ;
struct TYPE_29__ {TYPE_5__ arch; } ;
struct vcpu_svm {TYPE_12__* vmcb; TYPE_2__ nested; TYPE_7__ vcpu; } ;
struct kvm_host_map {int dummy; } ;
struct TYPE_26__ {int /*<<< orphan*/  cpl; int /*<<< orphan*/  dr6; int /*<<< orphan*/  dr7; int /*<<< orphan*/  rip; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rax; int /*<<< orphan*/  cr2; int /*<<< orphan*/  cr3; int /*<<< orphan*/  idtr; int /*<<< orphan*/  gdtr; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; } ;
struct TYPE_23__ {int int_ctl; int /*<<< orphan*/  pause_filter_thresh; int /*<<< orphan*/  pause_filter_count; int /*<<< orphan*/  event_inj_err; int /*<<< orphan*/  event_inj; int /*<<< orphan*/  int_state; int /*<<< orphan*/  int_vector; int /*<<< orphan*/  virt_ext; int /*<<< orphan*/  tsc_offset; } ;
struct TYPE_22__ {TYPE_1__ control; TYPE_4__ save; } ;

/* Variables and functions */
 int HF_HIF_MASK ; 
 int HF_VINTR_MASK ; 
 int /*<<< orphan*/  INTERCEPT_CR8_READ ; 
 int /*<<< orphan*/  INTERCEPT_CR8_WRITE ; 
 int /*<<< orphan*/  INTERCEPT_VMMCALL ; 
 int SVM_NESTED_CTL_NP_ENABLE ; 
 int V_INTR_MASKING_MASK ; 
 int X86_EFLAGS_IF ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,struct kvm_host_map*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 scalar_t__ npt_enabled ; 
 int /*<<< orphan*/  FUNC14 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct vcpu_svm *svm, u64 vmcb_gpa,
				 struct vmcb *nested_vmcb, struct kvm_host_map *map)
{
	if (FUNC4(&svm->vcpu) & X86_EFLAGS_IF)
		svm->vcpu.arch.hflags |= HF_HIF_MASK;
	else
		svm->vcpu.arch.hflags &= ~HF_HIF_MASK;

	if (nested_vmcb->control.nested_ctl & SVM_NESTED_CTL_NP_ENABLE) {
		svm->nested.nested_cr3 = nested_vmcb->control.nested_cr3;
		FUNC13(&svm->vcpu);
	}

	/* Load the nested guest state */
	svm->vmcb->save.es = nested_vmcb->save.es;
	svm->vmcb->save.cs = nested_vmcb->save.cs;
	svm->vmcb->save.ss = nested_vmcb->save.ss;
	svm->vmcb->save.ds = nested_vmcb->save.ds;
	svm->vmcb->save.gdtr = nested_vmcb->save.gdtr;
	svm->vmcb->save.idtr = nested_vmcb->save.idtr;
	FUNC10(&svm->vcpu, nested_vmcb->save.rflags);
	FUNC18(&svm->vcpu, nested_vmcb->save.efer);
	FUNC16(&svm->vcpu, nested_vmcb->save.cr0);
	FUNC17(&svm->vcpu, nested_vmcb->save.cr4);
	if (npt_enabled) {
		svm->vmcb->save.cr3 = nested_vmcb->save.cr3;
		svm->vcpu.arch.cr3 = nested_vmcb->save.cr3;
	} else
		(void)FUNC9(&svm->vcpu, nested_vmcb->save.cr3);

	/* Guest paging mode is active - reset mmu */
	FUNC5(&svm->vcpu);

	svm->vmcb->save.cr2 = svm->vcpu.arch.cr2 = nested_vmcb->save.cr2;
	FUNC6(&svm->vcpu, nested_vmcb->save.rax);
	FUNC8(&svm->vcpu, nested_vmcb->save.rsp);
	FUNC7(&svm->vcpu, nested_vmcb->save.rip);

	/* In case we don't even reach vcpu_run, the fields are not updated */
	svm->vmcb->save.rax = nested_vmcb->save.rax;
	svm->vmcb->save.rsp = nested_vmcb->save.rsp;
	svm->vmcb->save.rip = nested_vmcb->save.rip;
	svm->vmcb->save.dr7 = nested_vmcb->save.dr7;
	svm->vmcb->save.dr6 = nested_vmcb->save.dr6;
	svm->vmcb->save.cpl = nested_vmcb->save.cpl;

	svm->nested.vmcb_msrpm = nested_vmcb->control.msrpm_base_pa & ~0x0fffULL;
	svm->nested.vmcb_iopm  = nested_vmcb->control.iopm_base_pa  & ~0x0fffULL;

	/* cache intercepts */
	svm->nested.intercept_cr         = nested_vmcb->control.intercept_cr;
	svm->nested.intercept_dr         = nested_vmcb->control.intercept_dr;
	svm->nested.intercept_exceptions = nested_vmcb->control.intercept_exceptions;
	svm->nested.intercept            = nested_vmcb->control.intercept;

	FUNC15(&svm->vcpu, true);
	svm->vmcb->control.int_ctl = nested_vmcb->control.int_ctl | V_INTR_MASKING_MASK;
	if (nested_vmcb->control.int_ctl & V_INTR_MASKING_MASK)
		svm->vcpu.arch.hflags |= HF_VINTR_MASK;
	else
		svm->vcpu.arch.hflags &= ~HF_VINTR_MASK;

	if (svm->vcpu.arch.hflags & HF_VINTR_MASK) {
		/* We only want the cr8 intercept bits of the guest */
		FUNC0(svm, INTERCEPT_CR8_READ);
		FUNC0(svm, INTERCEPT_CR8_WRITE);
	}

	/* We don't want to see VMMCALLs from a nested guest */
	FUNC1(svm, INTERCEPT_VMMCALL);

	svm->vcpu.arch.tsc_offset += nested_vmcb->control.tsc_offset;
	svm->vmcb->control.tsc_offset = svm->vcpu.arch.tsc_offset;

	svm->vmcb->control.virt_ext = nested_vmcb->control.virt_ext;
	svm->vmcb->control.int_vector = nested_vmcb->control.int_vector;
	svm->vmcb->control.int_state = nested_vmcb->control.int_state;
	svm->vmcb->control.event_inj = nested_vmcb->control.event_inj;
	svm->vmcb->control.event_inj_err = nested_vmcb->control.event_inj_err;

	svm->vmcb->control.pause_filter_count =
		nested_vmcb->control.pause_filter_count;
	svm->vmcb->control.pause_filter_thresh =
		nested_vmcb->control.pause_filter_thresh;

	FUNC11(&svm->vcpu, map, true);

	/* Enter Guest-Mode */
	FUNC3(&svm->vcpu);

	/*
	 * Merge guest and host intercepts - must be called  with vcpu in
	 * guest-mode to take affect here
	 */
	FUNC14(svm);

	svm->nested.vmcb = vmcb_gpa;

	FUNC2(svm);

	FUNC12(svm->vmcb);
}