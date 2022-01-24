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
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_PHYSICAL_ADDRESS ; 
 int /*<<< orphan*/  KVM_FAST_MMIO_BUS ; 
 int /*<<< orphan*/  PFERR_RSVD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	gpa_t gpa;

	/*
	 * A nested guest cannot optimize MMIO vmexits, because we have an
	 * nGPA here instead of the required GPA.
	 */
	gpa = FUNC5(GUEST_PHYSICAL_ADDRESS);
	if (!FUNC0(vcpu) &&
	    !FUNC1(vcpu, KVM_FAST_MMIO_BUS, gpa, 0, NULL)) {
		FUNC4(gpa);
		return FUNC3(vcpu);
	}

	return FUNC2(vcpu, gpa, PFERR_RSVD_MASK, NULL, 0);
}