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
struct sys_reg_params {int regval; int /*<<< orphan*/  is_32bit; scalar_t__ is_aarch32; int /*<<< orphan*/  is_write; } ;
struct sys_reg_desc {int reg; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int,int) ; 

__attribute__((used)) static bool FUNC7(struct kvm_vcpu *vcpu,
			  struct sys_reg_params *p,
			  const struct sys_reg_desc *r)
{
	bool was_enabled = FUNC4(vcpu);
	u64 val;
	int reg = r->reg;

	FUNC0(!p->is_write);

	/* See the 32bit mapping in kvm_host.h */
	if (p->is_aarch32)
		reg = r->reg / 2;

	if (!p->is_aarch32 || !p->is_32bit) {
		val = p->regval;
	} else {
		val = FUNC5(vcpu, reg);
		if (r->reg % 2)
			val = (p->regval << 32) | (u64)FUNC2(val);
		else
			val = ((u64)FUNC3(val) << 32) |
				FUNC2(p->regval);
	}
	FUNC6(vcpu, val, reg);

	FUNC1(vcpu, was_enabled);
	return true;
}