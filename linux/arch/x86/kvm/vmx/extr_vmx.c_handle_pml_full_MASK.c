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
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_2__ {int idt_vectoring_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_INTR_STATE_NMI ; 
 unsigned long INTR_INFO_UNBLOCK_NMI ; 
 int VECTORING_INFO_VALID_MASK ; 
 scalar_t__ enable_vnmi ; 
 TYPE_1__* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	unsigned long exit_qualification;

	FUNC1(vcpu->vcpu_id);

	exit_qualification = FUNC2(EXIT_QUALIFICATION);

	/*
	 * PML buffer FULL happened while executing iret from NMI,
	 * "blocked by NMI" bit has to be set before next VM entry.
	 */
	if (!(FUNC0(vcpu)->idt_vectoring_info & VECTORING_INFO_VALID_MASK) &&
			enable_vnmi &&
			(exit_qualification & INTR_INFO_UNBLOCK_NMI))
		FUNC3(GUEST_INTERRUPTIBILITY_INFO,
				GUEST_INTR_STATE_NMI);

	/*
	 * PML buffer already flushed at beginning of VMEXIT. Nothing to do
	 * here.., and there's no userspace involvement needed for PML.
	 */
	return 1;
}