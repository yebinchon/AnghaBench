#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct vcpu_svm {struct kvm_vcpu vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 scalar_t__ pause_filter_thresh ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct vcpu_svm *svm)
{
	struct kvm_vcpu *vcpu = &svm->vcpu;
	bool in_kernel = (FUNC2(vcpu) == 0);

	if (pause_filter_thresh)
		FUNC0(vcpu);

	FUNC1(vcpu, in_kernel);
	return 1;
}