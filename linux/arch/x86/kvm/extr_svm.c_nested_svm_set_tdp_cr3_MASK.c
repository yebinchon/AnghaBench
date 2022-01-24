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
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  nested_cr3; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_NPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu,
				   unsigned long root)
{
	struct vcpu_svm *svm = FUNC2(vcpu);

	svm->vmcb->control.nested_cr3 = FUNC0(root);
	FUNC1(svm->vmcb, VMCB_NPT);
}