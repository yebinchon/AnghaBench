#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  int_ctl; } ;
struct vmcb {TYPE_1__ control; } ;
struct vcpu_svm {struct vmcb* vmcb; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVIC_ENABLE_MASK ; 
 int /*<<< orphan*/  VMCB_AVIC ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmcb*,int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC2(vcpu);
	struct vmcb *vmcb = svm->vmcb;

	if (FUNC0(vcpu))
		vmcb->control.int_ctl |= AVIC_ENABLE_MASK;
	else
		vmcb->control.int_ctl &= ~AVIC_ENABLE_MASK;
	FUNC1(vmcb, VMCB_AVIC);
}