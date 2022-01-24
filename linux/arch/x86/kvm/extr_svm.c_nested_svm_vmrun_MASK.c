#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_18__ {int intercept_cr; scalar_t__ exit_info_2; scalar_t__ exit_info_1; scalar_t__ exit_code_hi; void* exit_code; int /*<<< orphan*/  intercept; int /*<<< orphan*/  intercept_exceptions; int /*<<< orphan*/  nested_ctl; int /*<<< orphan*/  event_inj; int /*<<< orphan*/  int_ctl; } ;
struct TYPE_17__ {int /*<<< orphan*/  cr3; int /*<<< orphan*/  rax; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rip; int /*<<< orphan*/  rflags; int /*<<< orphan*/  cr4; int /*<<< orphan*/  cr0; int /*<<< orphan*/  efer; int /*<<< orphan*/  idtr; int /*<<< orphan*/  gdtr; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; } ;
struct vmcb {TYPE_4__ control; TYPE_3__ save; } ;
struct TYPE_16__ {int /*<<< orphan*/  cr4; int /*<<< orphan*/  efer; } ;
struct TYPE_19__ {TYPE_2__ arch; } ;
struct TYPE_15__ {struct vmcb* hsave; } ;
struct vcpu_svm {struct vmcb* vmcb; TYPE_5__ vcpu; TYPE_1__ nested; } ;
struct kvm_host_map {struct vmcb* hva; } ;

/* Variables and functions */
 int EINVAL ; 
 void* SVM_EXIT_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct vmcb*,struct vmcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*,int /*<<< orphan*/ ,struct vmcb*,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*) ; 
 int FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,struct kvm_host_map*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC14 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC15 (struct vmcb*) ; 
 scalar_t__ npt_enabled ; 
 int /*<<< orphan*/  FUNC16 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct vcpu_svm *svm)
{
	int ret;
	struct vmcb *nested_vmcb;
	struct vmcb *hsave = svm->nested.hsave;
	struct vmcb *vmcb = svm->vmcb;
	struct kvm_host_map map;
	u64 vmcb_gpa;

	vmcb_gpa = svm->vmcb->save.rax;

	ret = FUNC11(&svm->vcpu, FUNC2(vmcb_gpa), &map);
	if (ret == -EINVAL) {
		FUNC6(&svm->vcpu, 0);
		return 1;
	} else if (ret) {
		return FUNC10(&svm->vcpu);
	}

	ret = FUNC10(&svm->vcpu);

	nested_vmcb = map.hva;

	if (!FUNC15(nested_vmcb)) {
		nested_vmcb->control.exit_code    = SVM_EXIT_ERR;
		nested_vmcb->control.exit_code_hi = 0;
		nested_vmcb->control.exit_info_1  = 0;
		nested_vmcb->control.exit_info_2  = 0;

		FUNC12(&svm->vcpu, &map, true);

		return ret;
	}

	FUNC17(svm->vmcb->save.rip, vmcb_gpa,
			       nested_vmcb->save.rip,
			       nested_vmcb->control.int_ctl,
			       nested_vmcb->control.event_inj,
			       nested_vmcb->control.nested_ctl);

	FUNC16(nested_vmcb->control.intercept_cr & 0xffff,
				    nested_vmcb->control.intercept_cr >> 16,
				    nested_vmcb->control.intercept_exceptions,
				    nested_vmcb->control.intercept);

	/* Clear internal status */
	FUNC3(&svm->vcpu);
	FUNC4(&svm->vcpu);

	/*
	 * Save the old vmcb, so we don't need to pick what we save, but can
	 * restore everything when a VMEXIT occurs
	 */
	hsave->save.es     = vmcb->save.es;
	hsave->save.cs     = vmcb->save.cs;
	hsave->save.ss     = vmcb->save.ss;
	hsave->save.ds     = vmcb->save.ds;
	hsave->save.gdtr   = vmcb->save.gdtr;
	hsave->save.idtr   = vmcb->save.idtr;
	hsave->save.efer   = svm->vcpu.arch.efer;
	hsave->save.cr0    = FUNC7(&svm->vcpu);
	hsave->save.cr4    = svm->vcpu.arch.cr4;
	hsave->save.rflags = FUNC5(&svm->vcpu);
	hsave->save.rip    = FUNC9(&svm->vcpu);
	hsave->save.rsp    = vmcb->save.rsp;
	hsave->save.rax    = vmcb->save.rax;
	if (npt_enabled)
		hsave->save.cr3    = vmcb->save.cr3;
	else
		hsave->save.cr3    = FUNC8(&svm->vcpu);

	FUNC0(hsave, vmcb);

	FUNC1(svm, vmcb_gpa, nested_vmcb, &map);

	if (!FUNC14(svm)) {
		svm->vmcb->control.exit_code    = SVM_EXIT_ERR;
		svm->vmcb->control.exit_code_hi = 0;
		svm->vmcb->control.exit_info_1  = 0;
		svm->vmcb->control.exit_info_2  = 0;

		FUNC13(svm);
	}

	return ret;
}