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
struct TYPE_7__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_2__ arch; } ;
struct TYPE_8__ {scalar_t__ ipte_lock_count; int /*<<< orphan*/  sca_lock; } ;
struct TYPE_10__ {TYPE_3__ arch; } ;
struct TYPE_9__ {scalar_t__ kh; } ;
struct TYPE_6__ {int eca; } ;

/* Variables and functions */
 int ECA_SII ; 
 TYPE_4__* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct kvm_vcpu *vcpu)
{
	if (vcpu->arch.sie_block->eca & ECA_SII) {
		int rc;

		FUNC1(&vcpu->kvm->arch.sca_lock);
		rc = FUNC0(vcpu->kvm)->kh != 0;
		FUNC2(&vcpu->kvm->arch.sca_lock);
		return rc;
	}
	return vcpu->kvm->arch.ipte_lock_count != 0;
}