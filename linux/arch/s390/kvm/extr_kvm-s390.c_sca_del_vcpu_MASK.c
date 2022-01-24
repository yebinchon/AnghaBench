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
struct kvm_vcpu {size_t vcpu_id; TYPE_3__* kvm; } ;
struct esca_block {TYPE_1__* cpu; scalar_t__ mcn; } ;
struct bsca_block {TYPE_1__* cpu; scalar_t__ mcn; } ;
struct TYPE_5__ {int /*<<< orphan*/  sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {scalar_t__ sda; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	if (!FUNC1())
		return;
	FUNC2(&vcpu->kvm->arch.sca_lock);
	if (vcpu->kvm->arch.use_esca) {
		struct esca_block *sca = vcpu->kvm->arch.sca;

		FUNC0(vcpu->vcpu_id, (unsigned long *) sca->mcn);
		sca->cpu[vcpu->vcpu_id].sda = 0;
	} else {
		struct bsca_block *sca = vcpu->kvm->arch.sca;

		FUNC0(vcpu->vcpu_id, (unsigned long *) &sca->mcn);
		sca->cpu[vcpu->vcpu_id].sda = 0;
	}
	FUNC3(&vcpu->kvm->arch.sca_lock);
}