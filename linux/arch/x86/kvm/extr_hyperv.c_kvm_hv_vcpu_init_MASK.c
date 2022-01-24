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
struct kvm_vcpu_hv {int /*<<< orphan*/ * stimer; int /*<<< orphan*/  stimer_pending_bitmap; int /*<<< orphan*/  synic; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HV_SYNIC_STIMER_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct kvm_vcpu_hv* FUNC4 (struct kvm_vcpu*) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	struct kvm_vcpu_hv *hv_vcpu = FUNC4(vcpu);
	int i;

	FUNC3(&hv_vcpu->synic);

	FUNC1(hv_vcpu->stimer_pending_bitmap, HV_SYNIC_STIMER_COUNT);
	for (i = 0; i < FUNC0(hv_vcpu->stimer); i++)
		FUNC2(&hv_vcpu->stimer[i], i);
}