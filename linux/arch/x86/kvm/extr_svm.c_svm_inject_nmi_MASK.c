#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_8__ {int /*<<< orphan*/  nmi_injections; } ;
struct TYPE_7__ {int /*<<< orphan*/  hflags; } ;
struct kvm_vcpu {TYPE_4__ stat; TYPE_3__ arch; } ;
struct TYPE_5__ {int event_inj; } ;
struct TYPE_6__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  HF_NMI_MASK ; 
 int /*<<< orphan*/  INTERCEPT_IRET ; 
 int SVM_EVTINJ_TYPE_NMI ; 
 int SVM_EVTINJ_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC1(vcpu);

	svm->vmcb->control.event_inj = SVM_EVTINJ_VALID | SVM_EVTINJ_TYPE_NMI;
	vcpu->arch.hflags |= HF_NMI_MASK;
	FUNC0(svm, INTERCEPT_IRET);
	++vcpu->stat.nmi_injections;
}