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
struct kvm_vcpu {int /*<<< orphan*/  mode; TYPE_1__* run; } ;
struct TYPE_2__ {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  IN_GUEST_MODE ; 
 int /*<<< orphan*/  KVM_EXIT_INTR ; 
 int /*<<< orphan*/  SIGNAL_EXITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 

int FUNC14(struct kvm_vcpu *vcpu)
{
	int r;

	FUNC0(FUNC4());
	FUNC3();

	while (true) {
		if (FUNC10()) {
			FUNC9();
			FUNC1();
			FUNC3();
			continue;
		}

		if (FUNC11(current)) {
			FUNC6(vcpu, SIGNAL_EXITS);
			vcpu->run->exit_reason = KVM_EXIT_INTR;
			r = -EINTR;
			break;
		}

		vcpu->mode = IN_GUEST_MODE;

		/*
		 * Reading vcpu->requests must happen after setting vcpu->mode,
		 * so we don't miss a request because the requester sees
		 * OUTSIDE_GUEST_MODE and assumes we'll be checking requests
		 * before next entering the guest (and thus doesn't IPI).
		 * This also orders the write to mode from any reads
		 * to the page tables done while the VCPU is running.
		 * Please see the comment in kvm_flush_remote_tlbs.
		 */
		FUNC12();

		if (FUNC5(vcpu)) {
			/* Make sure we process requests preemptable */
			FUNC9();
			FUNC13(vcpu);
			r = FUNC7(vcpu);
			FUNC3();
			if (r > 0)
				continue;
			break;
		}

		if (FUNC8(vcpu)) {
			/* interrupts got enabled in between, so we
			   are back at square 1 */
			continue;
		}

		FUNC2();
		return 1;
	}

	/* return to host */
	FUNC9();
	return r;
}