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
struct TYPE_4__ {scalar_t__ msr_val; } ;
struct TYPE_5__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* vcpu_free ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	vcpu->arch.apf.msr_val = 0;

	FUNC2(vcpu);
	FUNC0(vcpu);
	FUNC3(vcpu);

	kvm_x86_ops->vcpu_free(vcpu);
}