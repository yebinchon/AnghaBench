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
typedef  int gpa_t ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int,int) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, unsigned long gva,
			    gpa_t gpa, bool write)
{
	/* For APIC access vmexit */
	if ((gpa & PAGE_MASK) == APIC_DEFAULT_PHYS_BASE)
		return 1;

	if (FUNC1(vcpu, gpa)) {
		FUNC0(gva, gpa, write, true);
		return 1;
	}

	return 0;
}