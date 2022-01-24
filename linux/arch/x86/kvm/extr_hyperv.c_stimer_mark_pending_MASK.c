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
struct kvm_vcpu_hv_stimer {int /*<<< orphan*/  index; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stimer_pending_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_HV_STIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_vcpu* FUNC3 (struct kvm_vcpu_hv_stimer*) ; 
 TYPE_1__* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu_hv_stimer *stimer,
				bool vcpu_kick)
{
	struct kvm_vcpu *vcpu = FUNC3(stimer);

	FUNC2(stimer->index,
		FUNC4(vcpu)->stimer_pending_bitmap);
	FUNC0(KVM_REQ_HV_STIMER, vcpu);
	if (vcpu_kick)
		FUNC1(vcpu);
}