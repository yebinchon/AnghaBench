#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pending; } ;
struct TYPE_7__ {scalar_t__ pv_unhalted; } ;
struct TYPE_9__ {scalar_t__ smi_pending; scalar_t__ nmi_pending; TYPE_3__ exception; TYPE_2__ pv; } ;
struct TYPE_6__ {int /*<<< orphan*/  done; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ async_pf; } ;
struct TYPE_10__ {scalar_t__ (* nmi_allowed ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_NMI ; 
 int /*<<< orphan*/  KVM_REQ_SMI ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 TYPE_5__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline bool FUNC9(struct kvm_vcpu *vcpu)
{
	if (!FUNC7(&vcpu->async_pf.done))
		return true;

	if (FUNC1(vcpu))
		return true;

	if (vcpu->arch.pv.pv_unhalted)
		return true;

	if (vcpu->arch.exception.pending)
		return true;

	if (FUNC6(KVM_REQ_NMI, vcpu) ||
	    (vcpu->arch.nmi_pending &&
	     kvm_x86_ops->nmi_allowed(vcpu)))
		return true;

	if (FUNC6(KVM_REQ_SMI, vcpu) ||
	    (vcpu->arch.smi_pending && !FUNC0(vcpu)))
		return true;

	if (FUNC2(vcpu) &&
	    (FUNC3(vcpu) ||
	    FUNC4(vcpu)))
		return true;

	if (FUNC5(vcpu))
		return true;

	return false;
}