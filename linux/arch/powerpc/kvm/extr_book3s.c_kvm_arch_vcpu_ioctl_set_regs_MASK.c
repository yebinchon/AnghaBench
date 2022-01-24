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
struct kvm_vcpu {int dummy; } ;
struct kvm_regs {int /*<<< orphan*/ * gpr; int /*<<< orphan*/  sprg7; int /*<<< orphan*/  sprg6; int /*<<< orphan*/  sprg5; int /*<<< orphan*/  sprg4; int /*<<< orphan*/  sprg3; int /*<<< orphan*/  sprg2; int /*<<< orphan*/  sprg1; int /*<<< orphan*/  sprg0; int /*<<< orphan*/  srr1; int /*<<< orphan*/  srr0; int /*<<< orphan*/  msr; int /*<<< orphan*/  xer; int /*<<< orphan*/  lr; int /*<<< orphan*/  ctr; int /*<<< orphan*/  cr; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

int FUNC18(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	int i;

	FUNC6(vcpu, regs->pc);
	FUNC1(vcpu, regs->cr);
	FUNC2(vcpu, regs->ctr);
	FUNC4(vcpu, regs->lr);
	FUNC17(vcpu, regs->xer);
	FUNC5(vcpu, regs->msr);
	FUNC15(vcpu, regs->srr0);
	FUNC16(vcpu, regs->srr1);
	FUNC7(vcpu, regs->sprg0);
	FUNC8(vcpu, regs->sprg1);
	FUNC9(vcpu, regs->sprg2);
	FUNC10(vcpu, regs->sprg3);
	FUNC11(vcpu, regs->sprg4);
	FUNC12(vcpu, regs->sprg5);
	FUNC13(vcpu, regs->sprg6);
	FUNC14(vcpu, regs->sprg7);

	for (i = 0; i < FUNC0(regs->gpr); i++)
		FUNC3(vcpu, i, regs->gpr[i]);

	return 0;
}