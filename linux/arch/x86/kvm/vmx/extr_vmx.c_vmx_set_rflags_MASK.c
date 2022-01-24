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
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_4__ {int /*<<< orphan*/  regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_5__ {unsigned long save_rflags; scalar_t__ vm86_active; } ;
struct TYPE_6__ {unsigned long rflags; int /*<<< orphan*/  emulation_required; TYPE_2__ rmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 int /*<<< orphan*/  VCPU_EXREG_RFLAGS ; 
 unsigned long X86_EFLAGS_IOPL ; 
 unsigned long X86_EFLAGS_VM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 TYPE_3__* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC4 (struct kvm_vcpu*) ; 

void FUNC5(struct kvm_vcpu *vcpu, unsigned long rflags)
{
	unsigned long old_rflags = FUNC4(vcpu);

	FUNC0(VCPU_EXREG_RFLAGS, (ulong *)&vcpu->arch.regs_avail);
	FUNC2(vcpu)->rflags = rflags;
	if (FUNC2(vcpu)->rmode.vm86_active) {
		FUNC2(vcpu)->rmode.save_rflags = rflags;
		rflags |= X86_EFLAGS_IOPL | X86_EFLAGS_VM;
	}
	FUNC3(GUEST_RFLAGS, rflags);

	if ((old_rflags ^ FUNC2(vcpu)->rflags) & X86_EFLAGS_VM)
		FUNC2(vcpu)->emulation_required = FUNC1(vcpu);
}