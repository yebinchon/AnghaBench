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
struct pi_desc {scalar_t__ nv; scalar_t__ control; unsigned int ndst; scalar_t__ sn; } ;
struct kvm_vcpu {int cpu; } ;

/* Variables and functions */
 scalar_t__ POSTED_INTR_WAKEUP_VECTOR ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__,scalar_t__) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pi_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pi_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pi_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pi_desc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct pi_desc* FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu, int cpu)
{
	struct pi_desc *pi_desc = FUNC7(vcpu);
	struct pi_desc old, new;
	unsigned int dest;

	/*
	 * In case of hot-plug or hot-unplug, we may have to undo
	 * vmx_vcpu_pi_put even if there is no assigned device.  And we
	 * always keep PI.NDST up to date for simplicity: it makes the
	 * code easier, and CPU migration is not a fast path.
	 */
	if (!FUNC5(pi_desc) && vcpu->cpu == cpu)
		return;

	/*
	 * If the 'nv' field is POSTED_INTR_WAKEUP_VECTOR, do not change
	 * PI.NDST: pi_post_block is the one expected to change PID.NDST and the
	 * wakeup handler expects the vCPU to be on the blocked_vcpu_list that
	 * matches PI.NDST. Otherwise, a vcpu may not be able to be woken up
	 * correctly.
	 */
	if (pi_desc->nv == POSTED_INTR_WAKEUP_VECTOR || vcpu->cpu == cpu) {
		FUNC2(pi_desc);
		goto after_clear_sn;
	}

	/* The full case.  */
	do {
		old.control = new.control = pi_desc->control;

		dest = FUNC1(cpu);

		if (FUNC8())
			new.ndst = dest;
		else
			new.ndst = (dest << 8) & 0xFF00;

		new.sn = 0;
	} while (FUNC0(&pi_desc->control, old.control,
			   new.control) != old.control);

after_clear_sn:

	/*
	 * Clear SN before reading the bitmap.  The VT-d firmware
	 * writes the bitmap and reads SN atomically (5.2.3 in the
	 * spec), so it doesn't really have a memory barrier that
	 * pairs with this, but we cannot do that and we need one.
	 */
	FUNC6();

	if (!FUNC3(pi_desc))
		FUNC4(pi_desc);
}