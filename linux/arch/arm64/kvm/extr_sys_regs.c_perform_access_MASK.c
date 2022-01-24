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
struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int /*<<< orphan*/  (* access ) (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;} ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*,struct sys_reg_desc const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sys_reg_params*,struct sys_reg_desc const*) ; 
 int /*<<< orphan*/ * FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu,
			   struct sys_reg_params *params,
			   const struct sys_reg_desc *r)
{
	FUNC7(*FUNC8(vcpu), params, r);

	/* Check for regs disabled by runtime config */
	if (FUNC6(vcpu, r)) {
		FUNC1(vcpu);
		return;
	}

	/*
	 * Not having an accessor means that we have configured a trap
	 * that we don't know how to handle. This certainly qualifies
	 * as a gross bug that should be fixed right away.
	 */
	FUNC0(!r->access);

	/* Skip instruction if instructed so */
	if (FUNC4(r->access(vcpu, params, r)))
		FUNC2(vcpu, FUNC3(vcpu));
}