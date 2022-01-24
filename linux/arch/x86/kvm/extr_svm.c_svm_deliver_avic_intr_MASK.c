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
struct TYPE_2__ {int /*<<< orphan*/  apic; } ;
struct kvm_vcpu {int cpu; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVM_AVIC_DOORBELL ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, int vec)
{
	FUNC3(vec, vcpu->arch.apic);
	FUNC6();

	if (FUNC0(vcpu)) {
		int cpuid = vcpu->cpu;

		if (cpuid != FUNC1())
			FUNC7(SVM_AVIC_DOORBELL, FUNC2(cpuid));
		FUNC5();
	} else
		FUNC4(vcpu);
}