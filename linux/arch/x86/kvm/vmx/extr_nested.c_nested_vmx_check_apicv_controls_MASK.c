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
struct vmcs12 {int posted_intr_nv; int posted_intr_desc_addr; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_BASED_TPR_SHADOW ; 
 int EINVAL ; 
 int /*<<< orphan*/  SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmcs12*) ; 
 scalar_t__ FUNC5 (struct vmcs12*) ; 
 scalar_t__ FUNC6 (struct vmcs12*) ; 
 scalar_t__ FUNC7 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC10(struct kvm_vcpu *vcpu,
					   struct vmcs12 *vmcs12)
{
	if (!FUNC7(vmcs12) &&
	    !FUNC4(vmcs12) &&
	    !FUNC6(vmcs12) &&
	    !FUNC5(vmcs12))
		return 0;

	/*
	 * If virtualize x2apic mode is enabled,
	 * virtualize apic access must be disabled.
	 */
	if (FUNC0(FUNC7(vmcs12) &&
	       FUNC3(vmcs12, SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES)))
		return -EINVAL;

	/*
	 * If virtual interrupt delivery is enabled,
	 * we must exit on external interrupts.
	 */
	if (FUNC0(FUNC6(vmcs12) && !FUNC9(vcpu)))
		return -EINVAL;

	/*
	 * bits 15:8 should be zero in posted_intr_nv,
	 * the descriptor address has been already checked
	 * in nested_get_vmcs12_pages.
	 *
	 * bits 5:0 of posted_intr_desc_addr should be zero.
	 */
	if (FUNC5(vmcs12) &&
	   (FUNC0(!FUNC6(vmcs12)) ||
	    FUNC0(!FUNC8(vcpu)) ||
	    FUNC0((vmcs12->posted_intr_nv & 0xff00)) ||
	    FUNC0((vmcs12->posted_intr_desc_addr & 0x3f)) ||
	    FUNC0((vmcs12->posted_intr_desc_addr >> FUNC1(vcpu)))))
		return -EINVAL;

	/* tpr shadow is needed by all apicv features. */
	if (FUNC0(!FUNC2(vmcs12, CPU_BASED_TPR_SHADOW)))
		return -EINVAL;

	return 0;
}