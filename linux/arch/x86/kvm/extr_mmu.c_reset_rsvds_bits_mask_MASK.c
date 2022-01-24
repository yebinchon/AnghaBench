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
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int /*<<< orphan*/  nx; int /*<<< orphan*/  root_level; int /*<<< orphan*/  guest_rsvd_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_GBPAGES ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu,
				  struct kvm_mmu *context)
{
	FUNC0(vcpu, &context->guest_rsvd_check,
				FUNC1(vcpu), context->root_level,
				context->nx,
				FUNC2(vcpu, X86_FEATURE_GBPAGES),
				FUNC4(vcpu), FUNC3(vcpu));
}