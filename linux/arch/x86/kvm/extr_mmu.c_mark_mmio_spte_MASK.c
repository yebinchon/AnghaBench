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
typedef  unsigned int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned int generation; } ;

/* Variables and functions */
 unsigned int MMIO_SPTE_GEN_MASK ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int FUNC0 (unsigned int) ; 
 TYPE_1__* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int) ; 
 unsigned int shadow_mmio_access_mask ; 
 unsigned int shadow_mmio_value ; 
 unsigned int shadow_nonpresent_or_rsvd_mask ; 
 unsigned int shadow_nonpresent_or_rsvd_mask_len ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu, u64 *sptep, u64 gfn,
			   unsigned access)
{
	u64 gen = FUNC1(vcpu)->generation & MMIO_SPTE_GEN_MASK;
	u64 mask = FUNC0(gen);
	u64 gpa = gfn << PAGE_SHIFT;

	access &= shadow_mmio_access_mask;
	mask |= shadow_mmio_value | access;
	mask |= gpa | shadow_nonpresent_or_rsvd_mask;
	mask |= (gpa & shadow_nonpresent_or_rsvd_mask)
		<< shadow_nonpresent_or_rsvd_mask_len;

	FUNC3(sptep, gfn, access, gen);
	FUNC2(sptep, mask);
}