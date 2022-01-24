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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  regs_dirty; int /*<<< orphan*/  regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu {int* pdptrs; } ;
typedef  int /*<<< orphan*/  pdpte ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PFERR_USER_MASK ; 
 int PFERR_WRITE_MASK ; 
 int PT_PRESENT_MASK ; 
 int /*<<< orphan*/  VCPU_EXREG_PDPTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct kvm_vcpu*,struct kvm_mmu*,unsigned long,int*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu, struct kvm_mmu *mmu, unsigned long cr3)
{
	gfn_t pdpt_gfn = cr3 >> PAGE_SHIFT;
	unsigned offset = ((cr3 & (PAGE_SIZE-1)) >> 5) << 2;
	int i;
	int ret;
	u64 pdpte[FUNC0(mmu->pdptrs)];

	ret = FUNC2(vcpu, mmu, pdpt_gfn, pdpte,
				      offset * sizeof(u64), sizeof(pdpte),
				      PFERR_USER_MASK|PFERR_WRITE_MASK);
	if (ret < 0) {
		ret = 0;
		goto out;
	}
	for (i = 0; i < FUNC0(pdpte); ++i) {
		if ((pdpte[i] & PT_PRESENT_MASK) &&
		    (pdpte[i] & FUNC4(vcpu))) {
			ret = 0;
			goto out;
		}
	}
	ret = 1;

	FUNC3(mmu->pdptrs, pdpte, sizeof(mmu->pdptrs));
	FUNC1(VCPU_EXREG_PDPTR,
		  (unsigned long *)&vcpu->arch.regs_avail);
	FUNC1(VCPU_EXREG_PDPTR,
		  (unsigned long *)&vcpu->arch.regs_dirty);
out:

	return ret;
}