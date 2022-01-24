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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int GUEST_INTR_STATE_MOV_SS ; 
 int GUEST_INTR_STATE_STI ; 
 int KVM_X86_SHADOW_INT_MOV_SS ; 
 int KVM_X86_SHADOW_INT_STI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct kvm_vcpu *vcpu, int mask)
{
	u32 interruptibility_old = FUNC0(GUEST_INTERRUPTIBILITY_INFO);
	u32 interruptibility = interruptibility_old;

	interruptibility &= ~(GUEST_INTR_STATE_STI | GUEST_INTR_STATE_MOV_SS);

	if (mask & KVM_X86_SHADOW_INT_MOV_SS)
		interruptibility |= GUEST_INTR_STATE_MOV_SS;
	else if (mask & KVM_X86_SHADOW_INT_STI)
		interruptibility |= GUEST_INTR_STATE_STI;

	if ((interruptibility != interruptibility_old))
		FUNC1(GUEST_INTERRUPTIBILITY_INFO, interruptibility);
}