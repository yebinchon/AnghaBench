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
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int shadow_mmio_access_mask ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool FUNC5(struct kvm_vcpu *vcpu, gva_t gva, gfn_t gfn,
				kvm_pfn_t pfn, unsigned access, int *ret_val)
{
	/* The pfn is invalid, report the error! */
	if (FUNC3(FUNC0(pfn))) {
		*ret_val = FUNC2(vcpu, gfn, pfn);
		return true;
	}

	if (FUNC3(FUNC1(pfn)))
		FUNC4(vcpu, gva, gfn,
				     access & shadow_mmio_access_mask);

	return false;
}