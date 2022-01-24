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
struct kvm_vcpu {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  READING_SHADOW_PAGE_TABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	/* We re-enable IRQs in kvm_trap_emul_gva_lockless_end() */
	FUNC0(FUNC1());

	/*
	 * The caller is about to access the GVA space, so we set the mode to
	 * force TLB flush requests to send an IPI, and also disable IRQs to
	 * delay IPI handling until kvm_trap_emul_gva_lockless_end().
	 */
	FUNC3();

	/*
	 * Make sure the read of VCPU requests is not reordered ahead of the
	 * write to vcpu->mode, or we could miss a TLB flush request while
	 * the requester sees the VCPU as outside of guest mode and not needing
	 * an IPI.
	 */
	FUNC5(vcpu->mode, READING_SHADOW_PAGE_TABLES);

	/*
	 * If a TLB flush has been requested (potentially while
	 * OUTSIDE_GUEST_MODE and assumed immediately effective), perform it
	 * before accessing the GVA space, and be sure to reload the ASID if
	 * necessary as it'll be immediately used.
	 *
	 * TLB flush requests after this check will trigger an IPI due to the
	 * mode change above, which will be delayed due to IRQs disabled.
	 */
	FUNC2(vcpu, FUNC4(), true);
}