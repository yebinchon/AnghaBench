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
struct TYPE_2__ {int (* vcpu_run ) (struct kvm_run*,struct kvm_vcpu*) ;} ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 (struct kvm_run*,struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC9(struct kvm_run *run, struct kvm_vcpu *vcpu)
{
	int cpu = FUNC7();
	int r;

	FUNC1(vcpu);
	/* Check if we have any exceptions/interrupts pending */
	FUNC0(vcpu, FUNC6());

	FUNC2(vcpu, cpu);
	FUNC3(vcpu, cpu);
	FUNC4(vcpu);

	r = vcpu->arch.vcpu_run(run, vcpu);

	FUNC5(vcpu);

	return r;
}