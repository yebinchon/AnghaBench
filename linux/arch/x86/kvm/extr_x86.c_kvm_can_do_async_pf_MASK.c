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
struct TYPE_4__ {scalar_t__ pending; } ;
struct TYPE_5__ {TYPE_1__ exception; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__ arch; } ;
struct TYPE_6__ {int (* interrupt_allowed ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(struct kvm_vcpu *vcpu)
{
	if (FUNC5(!FUNC3(vcpu) ||
		     FUNC1(vcpu) ||
		     vcpu->arch.exception.pending))
		return false;

	if (FUNC2(vcpu->kvm) && !FUNC0(vcpu))
		return false;

	/*
	 * If interrupts are off we cannot even use an artificial
	 * halt state.
	 */
	return kvm_x86_ops->interrupt_allowed(vcpu);
}