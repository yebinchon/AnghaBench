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
struct kvm_vcpu {int /*<<< orphan*/  kvm; struct kvm_run* run; } ;
struct kvm_run {int if_flag; int ready_for_interrupt_injection; int /*<<< orphan*/  apic_base; int /*<<< orphan*/  cr8; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_RUN_X86_SMM ; 
 int X86_EFLAGS_IF ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvm_run *kvm_run = vcpu->run;

	kvm_run->if_flag = (FUNC3(vcpu) & X86_EFLAGS_IF) != 0;
	kvm_run->flags = FUNC0(vcpu) ? KVM_RUN_X86_SMM : 0;
	kvm_run->cr8 = FUNC2(vcpu);
	kvm_run->apic_base = FUNC1(vcpu);
	kvm_run->ready_for_interrupt_injection =
		FUNC5(vcpu->kvm) ||
		FUNC4(vcpu);
}