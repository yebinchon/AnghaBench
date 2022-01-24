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
struct TYPE_2__ {struct kvm_run* run; } ;
struct vcpu_svm {int /*<<< orphan*/  vmcb; TYPE_1__ vcpu; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_EXIT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 

__attribute__((used)) static int FUNC2(struct vcpu_svm *svm)
{
	struct kvm_run *kvm_run = svm->vcpu.run;

	/*
	 * VMCB is undefined after a SHUTDOWN intercept
	 * so reinitialize it.
	 */
	FUNC0(svm->vmcb);
	FUNC1(svm);

	kvm_run->exit_reason = KVM_EXIT_SHUTDOWN;
	return 0;
}