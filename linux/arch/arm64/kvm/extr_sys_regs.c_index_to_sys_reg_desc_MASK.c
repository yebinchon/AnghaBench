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
typedef  int u64 ;
struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {scalar_t__ get_user; scalar_t__ reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KVM_REG_ARM64_SYSREG ; 
 int KVM_REG_ARM_COPROC_MASK ; 
 struct sys_reg_desc* FUNC1 (struct sys_reg_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sys_reg_desc* FUNC2 (int,struct sys_reg_params*,struct sys_reg_desc const*,size_t) ; 
 struct sys_reg_desc* FUNC3 (int /*<<< orphan*/ ,int,size_t*) ; 
 int /*<<< orphan*/  sys_reg_descs ; 

__attribute__((used)) static const struct sys_reg_desc *FUNC4(struct kvm_vcpu *vcpu,
						    u64 id)
{
	size_t num;
	const struct sys_reg_desc *table, *r;
	struct sys_reg_params params;

	/* We only do sys_reg for now. */
	if ((id & KVM_REG_ARM_COPROC_MASK) != KVM_REG_ARM64_SYSREG)
		return NULL;

	table = FUNC3(vcpu->arch.target, true, &num);
	r = FUNC2(id, &params, table, num);
	if (!r)
		r = FUNC1(&params, sys_reg_descs, FUNC0(sys_reg_descs));

	/* Not saved in the sys_reg array and not otherwise accessible? */
	if (r && !(r->reg || r->get_user))
		r = NULL;

	return r;
}