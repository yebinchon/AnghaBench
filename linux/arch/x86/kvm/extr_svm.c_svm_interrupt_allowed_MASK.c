#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int int_state; } ;
struct vmcb {TYPE_1__ control; } ;
struct TYPE_5__ {int hflags; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_svm {TYPE_3__ vcpu; struct vmcb* vmcb; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int HF_VINTR_MASK ; 
 int SVM_INTERRUPT_SHADOW_MASK ; 
 int X86_EFLAGS_IF ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC3(vcpu);
	struct vmcb *vmcb = svm->vmcb;
	int ret;

	if (!FUNC0(svm) ||
	     (vmcb->control.int_state & SVM_INTERRUPT_SHADOW_MASK))
		return 0;

	ret = !!(FUNC2(vcpu) & X86_EFLAGS_IF);

	if (FUNC1(vcpu))
		return ret && !(svm->vcpu.arch.hflags & HF_VINTR_MASK);

	return ret;
}