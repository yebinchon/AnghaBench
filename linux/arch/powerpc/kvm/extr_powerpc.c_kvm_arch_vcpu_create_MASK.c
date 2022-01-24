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
struct TYPE_2__ {int /*<<< orphan*/ * wqp; } ;
struct kvm_vcpu {int /*<<< orphan*/  wq; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 struct kvm_vcpu* FUNC1 (struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned int) ; 

struct kvm_vcpu *FUNC3(struct kvm *kvm, unsigned int id)
{
	struct kvm_vcpu *vcpu;
	vcpu = FUNC1(kvm, id);
	if (!FUNC0(vcpu)) {
		vcpu->arch.wqp = &vcpu->wq;
		FUNC2(vcpu, id);
	}
	return vcpu;
}