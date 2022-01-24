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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_BASED_VIRTUAL_NMI_PENDING ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int GUEST_INTR_STATE_STI ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  enable_vnmi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	if (!enable_vnmi ||
	    FUNC3(GUEST_INTERRUPTIBILITY_INFO) & GUEST_INTR_STATE_STI) {
		FUNC0(vcpu);
		return;
	}

	FUNC1(FUNC2(vcpu), CPU_BASED_VIRTUAL_NMI_PENDING);
}