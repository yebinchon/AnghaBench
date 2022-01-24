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
 int /*<<< orphan*/  INTERCEPT_CR8_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu, int tpr, int irr)
{
	struct vcpu_svm *svm = FUNC4(vcpu);

	if (FUNC3(vcpu) ||
	    FUNC1(vcpu))
		return;

	FUNC0(svm, INTERCEPT_CR8_WRITE);

	if (irr == -1)
		return;

	if (tpr >= irr)
		FUNC2(svm, INTERCEPT_CR8_WRITE);
}