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
struct kvmppc_vcpu_e500 {void* svr; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_type; void* pvr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_CPU_E500V2 ; 
 int /*<<< orphan*/  SPRN_PVR ; 
 int /*<<< orphan*/  SPRN_SVR ; 
 int /*<<< orphan*/  FUNC0 (struct kvmppc_vcpu_e500*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct kvmppc_vcpu_e500* FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC2(vcpu);

	FUNC0(vcpu_e500);

	/* Registers init */
	vcpu->arch.pvr = FUNC1(SPRN_PVR);
	vcpu_e500->svr = FUNC1(SPRN_SVR);

	vcpu->arch.cpu_type = KVM_CPU_E500V2;

	return 0;
}