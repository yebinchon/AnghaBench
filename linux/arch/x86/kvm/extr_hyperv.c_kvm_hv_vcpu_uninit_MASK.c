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
struct kvm_vcpu_hv {int /*<<< orphan*/ * stimer; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct kvm_vcpu_hv* FUNC2 (struct kvm_vcpu*) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvm_vcpu_hv *hv_vcpu = FUNC2(vcpu);
	int i;

	for (i = 0; i < FUNC0(hv_vcpu->stimer); i++)
		FUNC1(&hv_vcpu->stimer[i]);
}