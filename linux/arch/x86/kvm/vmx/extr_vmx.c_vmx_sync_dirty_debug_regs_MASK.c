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
struct TYPE_2__ {int /*<<< orphan*/  switch_db_regs; int /*<<< orphan*/  dr7; int /*<<< orphan*/  dr6; int /*<<< orphan*/ * db; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_BASED_MOV_DR_EXITING ; 
 int /*<<< orphan*/  GUEST_DR7 ; 
 int /*<<< orphan*/  KVM_DEBUGREG_WONT_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	FUNC1(vcpu->arch.db[0], 0);
	FUNC1(vcpu->arch.db[1], 1);
	FUNC1(vcpu->arch.db[2], 2);
	FUNC1(vcpu->arch.db[3], 3);
	FUNC1(vcpu->arch.dr6, 6);
	vcpu->arch.dr7 = FUNC3(GUEST_DR7);

	vcpu->arch.switch_db_regs &= ~KVM_DEBUGREG_WONT_EXIT;
	FUNC0(FUNC2(vcpu), CPU_BASED_MOV_DR_EXITING);
}