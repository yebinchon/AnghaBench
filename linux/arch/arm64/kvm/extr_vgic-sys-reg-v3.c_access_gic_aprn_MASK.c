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
typedef  scalar_t__ u8 ;
struct sys_reg_params {scalar_t__ regval; int /*<<< orphan*/  is_write; } ;
struct sys_reg_desc {int Op2; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct sys_reg_params*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC2(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
			    const struct sys_reg_desc *r, u8 apr)
{
	u8 idx = r->Op2 & 3;

	if (idx > FUNC1(vcpu))
		goto err;

	FUNC0(vcpu, p, apr, idx);
	return true;
err:
	if (!p->is_write)
		p->regval = 0;

	return false;
}