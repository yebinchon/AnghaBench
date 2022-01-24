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
struct TYPE_4__ {TYPE_1__* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_lapic_state {int /*<<< orphan*/  regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,struct kvm_lapic_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct kvm_vcpu *vcpu, struct kvm_lapic_state *s)
{
	FUNC1(s->regs, vcpu->arch.apic->regs, sizeof(*s));
	return FUNC0(vcpu, s, false);
}