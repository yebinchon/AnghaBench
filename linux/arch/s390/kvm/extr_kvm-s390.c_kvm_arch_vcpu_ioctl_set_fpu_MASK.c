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
struct kvm_vcpu {TYPE_2__* run; } ;
struct kvm_fpu {scalar_t__ fprs; int /*<<< orphan*/  fpc; } ;
typedef  int /*<<< orphan*/  freg_t ;
typedef  int /*<<< orphan*/  __vector128 ;
struct TYPE_6__ {int /*<<< orphan*/  fprs; scalar_t__ vrs; int /*<<< orphan*/  fpc; } ;
struct TYPE_4__ {TYPE_3__ regs; } ;
struct TYPE_5__ {TYPE_1__ s; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MACHINE_HAS_VX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
	int ret = 0;

	FUNC3(vcpu);

	if (FUNC2(fpu->fpc)) {
		ret = -EINVAL;
		goto out;
	}
	vcpu->run->s.regs.fpc = fpu->fpc;
	if (MACHINE_HAS_VX)
		FUNC0((__vector128 *) vcpu->run->s.regs.vrs,
				 (freg_t *) fpu->fprs);
	else
		FUNC1(vcpu->run->s.regs.fprs, &fpu->fprs, sizeof(fpu->fprs));

out:
	FUNC4(vcpu);
	return ret;
}