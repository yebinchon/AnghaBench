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
struct kvm_run {int dummy; } ;
struct coproc_params {int dummy; } ;

/* Variables and functions */
 struct coproc_params FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*,struct coproc_params*) ; 

int FUNC2(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	struct coproc_params params = FUNC0(vcpu);
	return FUNC1(vcpu, &params);
}