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
struct TYPE_3__ {int (* vcpu_run ) (struct kvm_run*,struct kvm_vcpu*) ;int /*<<< orphan*/  cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 (struct kvm_run*,struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC12(struct kvm_run *run, struct kvm_vcpu *vcpu)
{
	int cpu = FUNC10();
	int r;

	/* Check if we have any exceptions/interrupts pending */
	FUNC3(vcpu,
				    FUNC6(vcpu->arch.cop0));

	FUNC7(run, vcpu);

	/*
	 * We use user accessors to access guest memory, but we don't want to
	 * invoke Linux page faulting.
	 */
	FUNC8();

	/* Disable hardware page table walking while in guest */
	FUNC2();

	/*
	 * While in guest context we're in the guest's address space, not the
	 * host process address space, so we need to be careful not to confuse
	 * e.g. cache management IPIs.
	 */
	FUNC5(cpu);

	r = vcpu->arch.vcpu_run(run, vcpu);

	/* We may have migrated while handling guest exits */
	cpu = FUNC10();

	/* Restore normal Linux process memory map */
	FUNC0(current->mm);
	FUNC4(cpu);

	FUNC1();

	FUNC9();

	return r;
}