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
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*,int) ; 

void FUNC3(struct kvm_vcpu *vcpu, int vector)
{
	struct kvm_lapic *apic = vcpu->arch.apic;

	FUNC2(apic, vector);

	FUNC0(apic, vector);
	FUNC1(KVM_REQ_EVENT, apic->vcpu);
}