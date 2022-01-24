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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  hv_lock; } ;
struct TYPE_5__ {TYPE_1__ hyperv; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct kvm_vcpu *vcpu, u32 msr, u64 data, bool host)
{
	if (FUNC0(msr)) {
		int r;

		FUNC3(&vcpu->kvm->arch.hyperv.hv_lock);
		r = FUNC2(vcpu, msr, data, host);
		FUNC4(&vcpu->kvm->arch.hyperv.hv_lock);
		return r;
	} else
		return FUNC1(vcpu, msr, data, host);
}