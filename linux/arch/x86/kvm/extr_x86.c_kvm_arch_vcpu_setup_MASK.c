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
struct TYPE_2__ {int /*<<< orphan*/  msr_platform_info; int /*<<< orphan*/  arch_capabilities; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_PLATFORM_INFO_CPUID_FAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

int FUNC6(struct kvm_vcpu *vcpu)
{
	vcpu->arch.arch_capabilities = FUNC0();
	vcpu->arch.msr_platform_info = MSR_PLATFORM_INFO_CPUID_FAULT;
	FUNC2(vcpu);
	FUNC4(vcpu);
	FUNC3(vcpu, false);
	FUNC1(vcpu, false);
	FUNC5(vcpu);
	return 0;
}