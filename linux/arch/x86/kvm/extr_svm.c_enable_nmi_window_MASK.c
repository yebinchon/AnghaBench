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
struct TYPE_10__ {scalar_t__ exit_required; } ;
struct TYPE_8__ {int hflags; } ;
struct TYPE_9__ {TYPE_3__ arch; } ;
struct vcpu_svm {int nmi_singlestep; TYPE_2__* vmcb; int /*<<< orphan*/  nmi_singlestep_guest_rflags; TYPE_5__ nested; TYPE_4__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {int rflags; } ;
struct TYPE_7__ {TYPE_1__ save; } ;

/* Variables and functions */
 int HF_IRET_MASK ; 
 int HF_NMI_MASK ; 
 int /*<<< orphan*/  INTERCEPT_STGI ; 
 int X86_EFLAGS_RF ; 
 int X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct vcpu_svm*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC3(vcpu);

	if ((svm->vcpu.arch.hflags & (HF_NMI_MASK | HF_IRET_MASK))
	    == HF_NMI_MASK)
		return; /* IRET will cause a vm exit */

	if (!FUNC0(svm)) {
		if (FUNC4(svm))
			FUNC1(svm, INTERCEPT_STGI);
		return; /* STGI will cause a vm exit */
	}

	if (svm->nested.exit_required)
		return; /* we're not going to run the guest yet */

	/*
	 * Something prevents NMI from been injected. Single step over possible
	 * problem (IRET or exception injection or interrupt shadow)
	 */
	svm->nmi_singlestep_guest_rflags = FUNC2(vcpu);
	svm->nmi_singlestep = true;
	svm->vmcb->save.rflags |= (X86_EFLAGS_TF | X86_EFLAGS_RF);
}