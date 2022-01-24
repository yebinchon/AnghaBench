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
struct kvm_vcpu {int /*<<< orphan*/  mode; scalar_t__ mmio_needed; int /*<<< orphan*/  mmio_is_write; } ;
struct kvm_run {scalar_t__ immediate_exit; } ;
struct TYPE_2__ {int (* vcpu_run ) (struct kvm_run*,struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  IN_GUEST_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* kvm_mips_callbacks ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 

int FUNC14(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	int r = -EINTR;

	FUNC12(vcpu);

	FUNC3(vcpu);

	if (vcpu->mmio_needed) {
		if (!vcpu->mmio_is_write)
			FUNC2(vcpu, run);
		vcpu->mmio_needed = 0;
	}

	if (run->immediate_exit)
		goto out;

	FUNC7(1);

	FUNC5();
	FUNC0();
	FUNC10(vcpu);

	/*
	 * Make sure the read of VCPU requests in vcpu_run() callback is not
	 * reordered ahead of the write to vcpu->mode, or we could miss a TLB
	 * flush request while the requester sees the VCPU as outside of guest
	 * mode and not needing an IPI.
	 */
	FUNC8(vcpu->mode, IN_GUEST_MODE);

	r = kvm_mips_callbacks->vcpu_run(run, vcpu);

	FUNC11(vcpu);
	FUNC1();
	FUNC6();

out:
	FUNC4(vcpu);

	FUNC13(vcpu);
	return r;
}