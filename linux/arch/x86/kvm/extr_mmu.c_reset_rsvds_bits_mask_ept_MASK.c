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
struct kvm_mmu {int /*<<< orphan*/  guest_rsvd_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu,
		struct kvm_mmu *context, bool execonly)
{
	FUNC0(&context->guest_rsvd_check,
				    FUNC1(vcpu), execonly);
}