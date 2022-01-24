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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ICR ; 
 int /*<<< orphan*/  APIC_ICR2 ; 
 int FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 

int FUNC2(struct kvm_vcpu *vcpu, u32 reg, u64 data)
{
	struct kvm_lapic *apic = vcpu->arch.apic;

	if (!FUNC1(vcpu))
		return 1;

	/* if this is ICR write vector before command */
	if (reg == APIC_ICR)
		FUNC0(apic, APIC_ICR2, (u32)(data >> 32));
	return FUNC0(apic, reg, (u32)data);
}