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
struct TYPE_2__ {int /*<<< orphan*/  kseg0_commpage; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned long,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(unsigned long badvaddr,
				       struct kvm_vcpu *vcpu)
{
	kvm_pfn_t pfn;
	pte_t *ptep;

	ptep = FUNC3(vcpu, badvaddr);
	if (!ptep) {
		FUNC1("No ptep for commpage %lx\n", badvaddr);
		return -1;
	}

	pfn = FUNC0(FUNC7(vcpu->arch.kseg0_commpage));
	/* Also set valid and dirty, so refill handler doesn't have to */
	*ptep = FUNC6(FUNC5(FUNC4(pfn, PAGE_SHARED)));

	/* Invalidate this entry in the TLB, guest kernel ASID only */
	FUNC2(vcpu, badvaddr, false, true);
	return 0;
}