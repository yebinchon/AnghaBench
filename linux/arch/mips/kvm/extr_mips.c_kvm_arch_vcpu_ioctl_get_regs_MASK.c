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
struct TYPE_2__ {int /*<<< orphan*/  pc; int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; int /*<<< orphan*/ * gprs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int /*<<< orphan*/  pc; int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; int /*<<< orphan*/ * gpr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	int i;

	FUNC1(vcpu);

	for (i = 0; i < FUNC0(vcpu->arch.gprs); i++)
		regs->gpr[i] = vcpu->arch.gprs[i];

	regs->hi = vcpu->arch.hi;
	regs->lo = vcpu->arch.lo;
	regs->pc = vcpu->arch.pc;

	FUNC2(vcpu);
	return 0;
}