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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_HAS_RAS_EXTN ; 
 int FUNC0 (int) ; 
 int ARM_EXCEPTION_EL1_SERROR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct kvm_vcpu *vcpu, struct kvm_run *run,
		       int exception_index)
{
	if (FUNC1(exception_index)) {
		if (FUNC7(ARM64_HAS_RAS_EXTN)) {
			u64 disr = FUNC5(vcpu);

			FUNC3(vcpu, FUNC2(disr));
		} else {
			FUNC4(vcpu);
		}

		return;
	}

	exception_index = FUNC0(exception_index);

	if (exception_index == ARM_EXCEPTION_EL1_SERROR)
		FUNC3(vcpu, FUNC6(vcpu));
}