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
struct kvm_vcpu_hv {int /*<<< orphan*/  vp_index; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 struct kvm_vcpu_hv* FUNC1 (struct kvm_vcpu*) ; 

void FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvm_vcpu_hv *hv_vcpu = FUNC1(vcpu);

	hv_vcpu->vp_index = FUNC0(vcpu);
}