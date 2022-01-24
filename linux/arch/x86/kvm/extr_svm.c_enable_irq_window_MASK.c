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
struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_svm*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_svm*) ; 
 struct vcpu_svm* FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct vcpu_svm*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC5(vcpu);

	if (FUNC1(vcpu))
		return;

	/*
	 * In case GIF=0 we can't rely on the CPU to tell us when GIF becomes
	 * 1, because that's a separate STGI/VMRUN intercept.  The next time we
	 * get that intercept, this function will be called again though and
	 * we'll get the vintr intercept. However, if the vGIF feature is
	 * enabled, the STGI interception will not occur. Enable the irq
	 * window under the assumption that the hardware will set the GIF.
	 */
	if ((FUNC6(svm) || FUNC0(svm)) && FUNC2(svm)) {
		FUNC4(svm);
		FUNC3(svm, 0x0);
	}
}