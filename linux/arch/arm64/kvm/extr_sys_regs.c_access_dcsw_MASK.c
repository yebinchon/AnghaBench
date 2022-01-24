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
struct sys_reg_params {int /*<<< orphan*/  is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_HAS_STAGE2_FWB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu,
			struct sys_reg_params *p,
			const struct sys_reg_desc *r)
{
	if (!p->is_write)
		return FUNC2(vcpu, p, r);

	/*
	 * Only track S/W ops if we don't have FWB. It still indicates
	 * that the guest is a bit broken (S/W operations should only
	 * be done by firmware, knowing that there is only a single
	 * CPU left in the system, and certainly not from non-secure
	 * software).
	 */
	if (!FUNC0(ARM64_HAS_STAGE2_FWB))
		FUNC1(vcpu);

	return true;
}