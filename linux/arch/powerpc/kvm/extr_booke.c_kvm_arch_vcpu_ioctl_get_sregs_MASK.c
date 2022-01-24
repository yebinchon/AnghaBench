#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pvr; } ;
struct kvm_vcpu {TYPE_4__* kvm; TYPE_1__ arch; } ;
struct kvm_sregs {int /*<<< orphan*/  pvr; } ;
struct TYPE_7__ {TYPE_2__* kvm_ops; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;
struct TYPE_6__ {int (* get_sregs ) (struct kvm_vcpu*,struct kvm_sregs*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct kvm_sregs*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct kvm_sregs*) ; 
 int FUNC2 (struct kvm_vcpu*,struct kvm_sregs*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu,
                                  struct kvm_sregs *sregs)
{
	int ret;

	FUNC3(vcpu);

	sregs->pvr = vcpu->arch.pvr;

	FUNC1(vcpu, sregs);
	FUNC0(vcpu, sregs);
	ret = vcpu->kvm->arch.kvm_ops->get_sregs(vcpu, sregs);

	FUNC4(vcpu);
	return ret;
}