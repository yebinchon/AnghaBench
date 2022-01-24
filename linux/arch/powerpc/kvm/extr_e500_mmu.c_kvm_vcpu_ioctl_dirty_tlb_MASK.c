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
struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_dirty_tlb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_vcpu_e500*) ; 
 struct kvmppc_vcpu_e500* FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu,
			     struct kvm_dirty_tlb *dirty)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC2(vcpu);
	FUNC1(vcpu_e500);
	FUNC0(vcpu);
	return 0;
}