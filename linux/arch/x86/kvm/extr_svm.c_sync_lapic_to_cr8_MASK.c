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
typedef  int u64 ;
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int V_TPR_MASK ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline void FUNC4(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC3(vcpu);
	u64 cr8;

	if (FUNC2(vcpu) ||
	    FUNC1(vcpu))
		return;

	cr8 = FUNC0(vcpu);
	svm->vmcb->control.int_ctl &= ~V_TPR_MASK;
	svm->vmcb->control.int_ctl |= cr8 & V_TPR_MASK;
}