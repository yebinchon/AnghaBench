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
struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int msr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULATED_MTMSRWE_EXITS ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int MSR_WE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct kvm_vcpu *vcpu)
{
	int r = 0;
	FUNC0(!FUNC2());

	FUNC6(vcpu);

	if (FUNC4(vcpu)) {
		/* Exception delivery raised request; start over */
		return 1;
	}

	if (vcpu->arch.shared->msr & MSR_WE) {
		FUNC8();
		FUNC5(vcpu);
		FUNC3(KVM_REQ_UNHALT, vcpu);
		FUNC1();

		FUNC7(vcpu, EMULATED_MTMSRWE_EXITS);
		r = 1;
	};

	return r;
}