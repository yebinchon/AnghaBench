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
struct sys_reg_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cp15_regs ; 
 struct sys_reg_desc* FUNC1 (int /*<<< orphan*/ ,int,size_t*) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sys_reg_desc const*,size_t) ; 

int FUNC3(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	const struct sys_reg_desc *target_specific;
	size_t num;

	target_specific = FUNC1(vcpu->arch.target, false, &num);
	return FUNC2(vcpu,
				cp15_regs, FUNC0(cp15_regs),
				target_specific, num);
}