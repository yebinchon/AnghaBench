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

/* Variables and functions */
 unsigned int KVM_PHYS_SHIFT ; 
 int PAGE_SHIFT ; 
 int PGDIR_SHIFT ; 
 unsigned int PHYS_MASK_SHIFT ; 
 int /*<<< orphan*/  SYS_ID_AA64MMFR0_EL1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 unsigned int kvm_ipa_limit ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	unsigned int ipa_max, pa_max, va_max, parange;

	parange = FUNC4(SYS_ID_AA64MMFR0_EL1) & 0x7;
	pa_max = FUNC1(parange);

	/* Clamp the IPA limit to the PA size supported by the kernel */
	ipa_max = (pa_max > PHYS_MASK_SHIFT) ? PHYS_MASK_SHIFT : pa_max;
	/*
	 * Since our stage2 table is dependent on the stage1 page table code,
	 * we must always honor the following condition:
	 *
	 *  Number of levels in Stage1 >= Number of levels in Stage2.
	 *
	 * So clamp the ipa limit further down to limit the number of levels.
	 * Since we can concatenate upto 16 tables at entry level, we could
	 * go upto 4bits above the maximum VA addressible with the current
	 * number of levels.
	 */
	va_max = PGDIR_SHIFT + PAGE_SHIFT - 3;
	va_max += 4;

	if (va_max < ipa_max)
		ipa_max = va_max;

	/*
	 * If the final limit is lower than the real physical address
	 * limit of the CPUs, report the reason.
	 */
	if (ipa_max < pa_max)
		FUNC3("kvm: Limiting the IPA size due to kernel %s Address limit\n",
			(va_max < pa_max) ? "Virtual" : "Physical");

	FUNC0(ipa_max < KVM_PHYS_SHIFT,
	     "KVM IPA limit (%d bit) is smaller than default size\n", ipa_max);
	kvm_ipa_limit = ipa_max;
	FUNC2("IPA Size Limit: %dbits\n", kvm_ipa_limit);
}