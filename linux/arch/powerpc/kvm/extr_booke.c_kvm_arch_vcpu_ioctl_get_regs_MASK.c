#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  link; int /*<<< orphan*/  ctr; int /*<<< orphan*/  nip; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; TYPE_2__* shared; TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_regs {int /*<<< orphan*/ * gpr; int /*<<< orphan*/  sprg7; int /*<<< orphan*/  sprg6; int /*<<< orphan*/  sprg5; int /*<<< orphan*/  sprg4; int /*<<< orphan*/  sprg3; int /*<<< orphan*/  sprg2; int /*<<< orphan*/  sprg1; int /*<<< orphan*/  sprg0; int /*<<< orphan*/  pid; int /*<<< orphan*/  srr1; int /*<<< orphan*/  srr0; int /*<<< orphan*/  msr; int /*<<< orphan*/  xer; int /*<<< orphan*/  lr; int /*<<< orphan*/  ctr; int /*<<< orphan*/  cr; int /*<<< orphan*/  pc; } ;
struct TYPE_5__ {int /*<<< orphan*/  msr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
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

int FUNC16(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	int i;

	FUNC14(vcpu);

	regs->pc = vcpu->arch.regs.nip;
	regs->cr = FUNC1(vcpu);
	regs->ctr = vcpu->arch.regs.ctr;
	regs->lr = vcpu->arch.regs.link;
	regs->xer = FUNC13(vcpu);
	regs->msr = vcpu->arch.shared->msr;
	regs->srr0 = FUNC11(vcpu);
	regs->srr1 = FUNC12(vcpu);
	regs->pid = vcpu->arch.pid;
	regs->sprg0 = FUNC3(vcpu);
	regs->sprg1 = FUNC4(vcpu);
	regs->sprg2 = FUNC5(vcpu);
	regs->sprg3 = FUNC6(vcpu);
	regs->sprg4 = FUNC7(vcpu);
	regs->sprg5 = FUNC8(vcpu);
	regs->sprg6 = FUNC9(vcpu);
	regs->sprg7 = FUNC10(vcpu);

	for (i = 0; i < FUNC0(regs->gpr); i++)
		regs->gpr[i] = FUNC2(vcpu, i);

	FUNC15(vcpu);
	return 0;
}