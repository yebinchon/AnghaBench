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
struct TYPE_4__ {int /*<<< orphan*/  pv_unhalted; } ;
struct TYPE_5__ {scalar_t__ apicv_active; TYPE_1__ pv; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {scalar_t__ (* dy_apicv_has_pending_interrupt ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  KVM_REQ_NMI ; 
 int /*<<< orphan*/  KVM_REQ_SMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 TYPE_3__* kvm_x86_ops ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 

bool FUNC3(struct kvm_vcpu *vcpu)
{
	if (FUNC0(vcpu->arch.pv.pv_unhalted))
		return true;

	if (FUNC1(KVM_REQ_NMI, vcpu) ||
		FUNC1(KVM_REQ_SMI, vcpu) ||
		 FUNC1(KVM_REQ_EVENT, vcpu))
		return true;

	if (vcpu->arch.apicv_active && kvm_x86_ops->dy_apicv_has_pending_interrupt(vcpu))
		return true;

	return false;
}