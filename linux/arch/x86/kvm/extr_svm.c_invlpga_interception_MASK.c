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
struct kvm_vcpu {int dummy; } ;
struct vcpu_svm {struct kvm_vcpu vcpu; TYPE_2__* vmcb; } ;
struct TYPE_3__ {int /*<<< orphan*/  rip; } ;
struct TYPE_4__ {TYPE_1__ save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vcpu_svm *svm)
{
	struct kvm_vcpu *vcpu = &svm->vcpu;

	FUNC4(svm->vmcb->save.rip, FUNC2(&svm->vcpu),
			  FUNC1(&svm->vcpu));

	/* Let's treat INVLPGA the same as INVLPG (can be optimized!) */
	FUNC0(vcpu, FUNC1(&svm->vcpu));

	return FUNC3(&svm->vcpu);
}