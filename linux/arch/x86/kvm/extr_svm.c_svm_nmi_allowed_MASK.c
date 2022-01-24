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
 int HF_NMI_MASK ; 
 int SVM_INTERRUPT_SHADOW_MASK ; 
 scalar_t__ FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (struct vcpu_svm*) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC2(vcpu);
	struct vmcb *vmcb = svm->vmcb;
	int ret;
	ret = !(vmcb->control.int_state & SVM_INTERRUPT_SHADOW_MASK) &&
	      !(svm->vcpu.arch.hflags & HF_NMI_MASK);
	ret = ret && FUNC0(svm) && FUNC1(svm);

	return ret;
}