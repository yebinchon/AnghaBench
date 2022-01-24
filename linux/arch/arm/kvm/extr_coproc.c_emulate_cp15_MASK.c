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
struct TYPE_2__ {int /*<<< orphan*/  target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct coproc_reg {struct coproc_reg const* (* access ) (struct kvm_vcpu*,struct coproc_params const*,struct coproc_reg const*) ;} ;
struct coproc_params {int /*<<< orphan*/  is_write; int /*<<< orphan*/  Op2; int /*<<< orphan*/  CRm; int /*<<< orphan*/  CRn; int /*<<< orphan*/  Rt1; int /*<<< orphan*/  Op1; } ;

/* Variables and functions */
 size_t FUNC0 (struct coproc_reg const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct coproc_reg const* cp15_regs ; 
 struct coproc_reg* FUNC2 (struct coproc_params const*,struct coproc_reg const*,size_t) ; 
 struct coproc_reg* FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 (struct coproc_reg const*) ; 
 int /*<<< orphan*/  FUNC9 (struct coproc_params const*) ; 
 struct coproc_reg const* FUNC10 (struct kvm_vcpu*,struct coproc_params const*,struct coproc_reg const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC13 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC14(struct kvm_vcpu *vcpu,
			const struct coproc_params *params)
{
	size_t num;
	const struct coproc_reg *table, *r;

	FUNC11(params->Op1, params->Rt1, params->CRn,
				   params->CRm, params->Op2, params->is_write);

	table = FUNC3(vcpu->arch.target, &num);

	/* Search target-specific then generic table. */
	r = FUNC2(params, table, num);
	if (!r)
		r = FUNC2(params, cp15_regs, FUNC0(cp15_regs));

	if (FUNC8(r)) {
		/* If we don't have an accessor, we should never get here! */
		FUNC1(!r->access);

		if (FUNC8(r->access(vcpu, params, r))) {
			/* Skip instruction, since it was emulated */
			FUNC6(vcpu, FUNC7(vcpu));
		}
	} else {
		/* If access function fails, it should complain. */
		FUNC4("Unsupported guest CP15 access at: %08lx [%08lx]\n",
			*FUNC13(vcpu), *FUNC12(vcpu));
		FUNC9(params);
		FUNC5(vcpu);
	}

	return 1;
}