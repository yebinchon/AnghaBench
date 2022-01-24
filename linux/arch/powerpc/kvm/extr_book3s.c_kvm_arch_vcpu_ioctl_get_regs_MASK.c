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
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int /*<<< orphan*/ * gpr; int /*<<< orphan*/  sprg7; int /*<<< orphan*/  sprg6; int /*<<< orphan*/  sprg5; int /*<<< orphan*/  sprg4; int /*<<< orphan*/  sprg3; int /*<<< orphan*/  sprg2; int /*<<< orphan*/  sprg1; int /*<<< orphan*/  sprg0; int /*<<< orphan*/  pid; int /*<<< orphan*/  srr1; int /*<<< orphan*/  srr0; int /*<<< orphan*/  msr; int /*<<< orphan*/  xer; int /*<<< orphan*/  lr; int /*<<< orphan*/  ctr; int /*<<< orphan*/  cr; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 

int FUNC18(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	int i;

	regs->pc = FUNC6(vcpu);
	regs->cr = FUNC1(vcpu);
	regs->ctr = FUNC2(vcpu);
	regs->lr = FUNC4(vcpu);
	regs->xer = FUNC17(vcpu);
	regs->msr = FUNC5(vcpu);
	regs->srr0 = FUNC15(vcpu);
	regs->srr1 = FUNC16(vcpu);
	regs->pid = vcpu->arch.pid;
	regs->sprg0 = FUNC7(vcpu);
	regs->sprg1 = FUNC8(vcpu);
	regs->sprg2 = FUNC9(vcpu);
	regs->sprg3 = FUNC10(vcpu);
	regs->sprg4 = FUNC11(vcpu);
	regs->sprg5 = FUNC12(vcpu);
	regs->sprg6 = FUNC13(vcpu);
	regs->sprg7 = FUNC14(vcpu);

	for (i = 0; i < FUNC0(regs->gpr); i++)
		regs->gpr[i] = FUNC3(vcpu, i);

	return 0;
}