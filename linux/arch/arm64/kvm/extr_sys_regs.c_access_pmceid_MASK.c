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
typedef  int /*<<< orphan*/  u64 ;
struct sys_reg_params {int Op2; int /*<<< orphan*/  regval; int /*<<< orphan*/  is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  pmceid0_el0 ; 
 int /*<<< orphan*/  pmceid1_el0 ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 

__attribute__((used)) static bool FUNC5(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
			  const struct sys_reg_desc *r)
{
	u64 pmceid;

	if (!FUNC1(vcpu))
		return FUNC4(vcpu, p, r);

	FUNC0(p->is_write);

	if (FUNC2(vcpu))
		return false;

	if (!(p->Op2 & 1))
		pmceid = FUNC3(pmceid0_el0);
	else
		pmceid = FUNC3(pmceid1_el0);

	p->regval = pmceid;

	return true;
}