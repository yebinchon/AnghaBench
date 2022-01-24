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
struct TYPE_6__ {int wait; int /*<<< orphan*/  pending_exceptions; int /*<<< orphan*/  pc; } ;
struct TYPE_5__ {int /*<<< orphan*/  wait_exits; } ;
struct kvm_vcpu {TYPE_1__* run; TYPE_3__ arch; TYPE_2__ stat; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_4__ {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int /*<<< orphan*/  KVM_EXIT_IRQ_WINDOW_OPEN ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  KVM_TRACE_EXIT_WAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

enum emulation_result FUNC6(struct kvm_vcpu *vcpu)
{
	FUNC2("[%#lx] !!!WAIT!!! (%#lx)\n", vcpu->arch.pc,
		  vcpu->arch.pending_exceptions);

	++vcpu->stat.wait_exits;
	FUNC5(vcpu, KVM_TRACE_EXIT_WAIT);
	if (!vcpu->arch.pending_exceptions) {
		FUNC4(vcpu);
		vcpu->arch.wait = 1;
		FUNC3(vcpu);

		/*
		 * We we are runnable, then definitely go off to user space to
		 * check if any I/O interrupts are pending.
		 */
		if (FUNC0(KVM_REQ_UNHALT, vcpu)) {
			FUNC1(KVM_REQ_UNHALT, vcpu);
			vcpu->run->exit_reason = KVM_EXIT_IRQ_WINDOW_OPEN;
		}
	}

	return EMULATE_DONE;
}