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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_lapic {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 scalar_t__ FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm_lapic *apic)
{
	u32 ppr;

	if (FUNC0(apic, &ppr) &&
	    FUNC1(apic, ppr) != -1)
		FUNC2(KVM_REQ_EVENT, apic->vcpu);
}