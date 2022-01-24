#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {struct kvm_run* run; } ;
struct vcpu_svm {TYPE_1__ vcpu; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_EXIT_SET_TPR ; 
 int FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct vcpu_svm *svm)
{
	struct kvm_run *kvm_run = svm->vcpu.run;
	int r;

	u8 cr8_prev = FUNC1(&svm->vcpu);
	/* instruction emulation calls kvm_set_cr8() */
	r = FUNC0(svm);
	if (FUNC2(&svm->vcpu))
		return r;
	if (cr8_prev <= FUNC1(&svm->vcpu))
		return r;
	kvm_run->exit_reason = KVM_EXIT_SET_TPR;
	return 0;
}