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
struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 size_t FUNC0 (struct sys_reg_desc const*) ; 
 struct sys_reg_desc* FUNC1 (struct sys_reg_params*,struct sys_reg_desc const*,size_t) ; 
 struct sys_reg_desc* FUNC2 (int /*<<< orphan*/ ,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (struct sys_reg_desc const*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sys_reg_params*) ; 
 struct sys_reg_desc const* sys_reg_descs ; 
 int /*<<< orphan*/ * FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC9 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC10(struct kvm_vcpu *vcpu,
			   struct sys_reg_params *params)
{
	size_t num;
	const struct sys_reg_desc *table, *r;

	table = FUNC2(vcpu->arch.target, true, &num);

	/* Search target-specific then generic table. */
	r = FUNC1(params, table, num);
	if (!r)
		r = FUNC1(params, sys_reg_descs, FUNC0(sys_reg_descs));

	if (FUNC5(r)) {
		FUNC6(vcpu, params, r);
	} else {
		FUNC3("Unsupported guest sys_reg access at: %lx [%08lx]\n",
			*FUNC9(vcpu), *FUNC8(vcpu));
		FUNC7(params);
		FUNC4(vcpu);
	}
	return 1;
}