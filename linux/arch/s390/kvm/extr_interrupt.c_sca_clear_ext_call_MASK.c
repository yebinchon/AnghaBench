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
union esca_sigp_ctrl {int value; } ;
union bsca_sigp_ctrl {int value; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_3__* kvm; } ;
struct esca_block {TYPE_1__* cpu; } ;
struct bsca_block {TYPE_1__* cpu; } ;
struct TYPE_5__ {int /*<<< orphan*/  sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {union esca_sigp_ctrl sigp_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSTAT_ECALL_PEND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	int rc, expect;

	if (!FUNC3())
		return;
	FUNC2(vcpu, CPUSTAT_ECALL_PEND);
	FUNC4(&vcpu->kvm->arch.sca_lock);
	if (vcpu->kvm->arch.use_esca) {
		struct esca_block *sca = vcpu->kvm->arch.sca;
		union esca_sigp_ctrl *sigp_ctrl =
			&(sca->cpu[vcpu->vcpu_id].sigp_ctrl);
		union esca_sigp_ctrl old = *sigp_ctrl;

		expect = old.value;
		rc = FUNC1(&sigp_ctrl->value, old.value, 0);
	} else {
		struct bsca_block *sca = vcpu->kvm->arch.sca;
		union bsca_sigp_ctrl *sigp_ctrl =
			&(sca->cpu[vcpu->vcpu_id].sigp_ctrl);
		union bsca_sigp_ctrl old = *sigp_ctrl;

		expect = old.value;
		rc = FUNC1(&sigp_ctrl->value, old.value, 0);
	}
	FUNC5(&vcpu->kvm->arch.sca_lock);
	FUNC0(rc != expect); /* cannot clear? */
}