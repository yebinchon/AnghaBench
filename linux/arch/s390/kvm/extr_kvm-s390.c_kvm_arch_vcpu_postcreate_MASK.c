#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  gmap; int /*<<< orphan*/  enabled_gmap; TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_4__* kvm; } ;
struct TYPE_6__ {scalar_t__ user_instr0; int /*<<< orphan*/  gmap; int /*<<< orphan*/  epdx; int /*<<< orphan*/  epoch; } ;
struct TYPE_9__ {TYPE_1__ arch; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  ictl; int /*<<< orphan*/  epdx; int /*<<< orphan*/  epoch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICTL_OPEREXC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int) ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	FUNC1(&vcpu->kvm->lock);
	FUNC3();
	vcpu->arch.sie_block->epoch = vcpu->kvm->arch.epoch;
	vcpu->arch.sie_block->epdx = vcpu->kvm->arch.epdx;
	FUNC4();
	FUNC2(&vcpu->kvm->lock);
	if (!FUNC0(vcpu->kvm)) {
		vcpu->arch.gmap = vcpu->kvm->arch.gmap;
		FUNC5(vcpu);
	}
	if (FUNC6(vcpu->kvm, 74) || vcpu->kvm->arch.user_instr0)
		vcpu->arch.sie_block->ictl |= ICTL_OPEREXC;
	/* make vcpu_load load the right gmap on the first trigger */
	vcpu->arch.enabled_gmap = vcpu->arch.gmap;
}