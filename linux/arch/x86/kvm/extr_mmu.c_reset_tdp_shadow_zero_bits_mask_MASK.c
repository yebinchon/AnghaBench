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
struct rsvd_bits_validate {int /*<<< orphan*/ ** rsvd_bits_mask; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int shadow_root_level; struct rsvd_bits_validate shadow_zero_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_GBPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct rsvd_bits_validate*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rsvd_bits_validate*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  shadow_me_mask ; 
 int /*<<< orphan*/  shadow_phys_bits ; 

__attribute__((used)) static void
FUNC4(struct kvm_vcpu *vcpu,
				struct kvm_mmu *context)
{
	struct rsvd_bits_validate *shadow_zero_check;
	int i;

	shadow_zero_check = &context->shadow_zero_check;

	if (FUNC3())
		FUNC0(vcpu, shadow_zero_check,
					shadow_phys_bits,
					context->shadow_root_level, false,
					FUNC2(X86_FEATURE_GBPAGES),
					true, true);
	else
		FUNC1(shadow_zero_check,
					    shadow_phys_bits,
					    false);

	if (!shadow_me_mask)
		return;

	for (i = context->shadow_root_level; --i >= 0;) {
		shadow_zero_check->rsvd_bits_mask[0][i] &= ~shadow_me_mask;
		shadow_zero_check->rsvd_bits_mask[1][i] &= ~shadow_me_mask;
	}
}