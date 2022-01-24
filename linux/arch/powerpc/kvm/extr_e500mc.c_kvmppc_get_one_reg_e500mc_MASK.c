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
typedef  union kvmppc_one_reg {int dummy; } kvmppc_one_reg ;
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  sprg9; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
#define  KVM_REG_PPC_SPRG9 128 
 union kvmppc_one_reg FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,int,union kvmppc_one_reg*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, u64 id,
			      union kvmppc_one_reg *val)
{
	int r = 0;

	switch (id) {
	case KVM_REG_PPC_SPRG9:
		*val = FUNC0(id, vcpu->arch.sprg9);
		break;
	default:
		r = FUNC1(vcpu, id, val);
	}

	return r;
}