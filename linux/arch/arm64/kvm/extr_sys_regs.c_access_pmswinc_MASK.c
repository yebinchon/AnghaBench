#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct sys_reg_params {int regval; int /*<<< orphan*/  is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 
 int FUNC5 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 

__attribute__((used)) static bool FUNC6(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
			   const struct sys_reg_desc *r)
{
	u64 mask;

	if (!FUNC0(vcpu))
		return FUNC5(vcpu, p, r);

	if (!p->is_write)
		return FUNC4(vcpu, p, r);

	if (FUNC3(vcpu))
		return false;

	mask = FUNC2(vcpu);
	FUNC1(vcpu, p->regval & mask);
	return true;
}