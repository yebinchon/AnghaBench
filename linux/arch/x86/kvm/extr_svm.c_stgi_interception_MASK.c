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
struct vcpu_svm {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERCEPT_STGI ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vcpu_svm*) ; 
 scalar_t__ FUNC5 (struct vcpu_svm*) ; 

__attribute__((used)) static int FUNC6(struct vcpu_svm *svm)
{
	int ret;

	if (FUNC4(svm))
		return 1;

	/*
	 * If VGIF is enabled, the STGI intercept is only added to
	 * detect the opening of the SMI/NMI window; remove it now.
	 */
	if (FUNC5(svm))
		FUNC0(svm, INTERCEPT_STGI);

	ret = FUNC3(&svm->vcpu);
	FUNC2(KVM_REQ_EVENT, &svm->vcpu);

	FUNC1(svm);

	return ret;
}