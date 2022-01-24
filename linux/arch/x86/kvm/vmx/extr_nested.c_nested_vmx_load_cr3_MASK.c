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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned long cr3; int /*<<< orphan*/  regs_avail; int /*<<< orphan*/  walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENTRY_FAIL_DEFAULT ; 
 int /*<<< orphan*/  ENTRY_FAIL_PDPTE ; 
 int /*<<< orphan*/  VCPU_EXREG_CR3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long,int) ; 
 unsigned long FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu, unsigned long cr3, bool nested_ept,
			       u32 *entry_failure_code)
{
	if (cr3 != FUNC5(vcpu) || (!nested_ept && FUNC8(vcpu))) {
		if (FUNC0(!FUNC7(vcpu, cr3))) {
			*entry_failure_code = ENTRY_FAIL_DEFAULT;
			return -EINVAL;
		}

		/*
		 * If PAE paging and EPT are both on, CR3 is not used by the CPU and
		 * must not be dereferenced.
		 */
		if (FUNC2(vcpu) && !nested_ept) {
			if (FUNC0(!FUNC6(vcpu, vcpu->arch.walk_mmu, cr3))) {
				*entry_failure_code = ENTRY_FAIL_PDPTE;
				return -EINVAL;
			}
		}
	}

	if (!nested_ept)
		FUNC4(vcpu, cr3, false);

	vcpu->arch.cr3 = cr3;
	FUNC1(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);

	FUNC3(vcpu, false);

	return 0;
}