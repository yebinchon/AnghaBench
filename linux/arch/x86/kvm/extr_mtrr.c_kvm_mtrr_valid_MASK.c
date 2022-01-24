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
typedef  int u64 ;
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int KVM_NR_VAR_MTRR ; 
 int MSR_IA32_CR_PAT ; 
 int MSR_MTRRdefType ; 
 int MSR_MTRRfix4K_F8000 ; 
 int MSR_MTRRfix64K_00000 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 

bool FUNC6(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
	int i;
	u64 mask;

	if (!FUNC4(msr))
		return false;

	if (msr == MSR_IA32_CR_PAT) {
		return FUNC3(data);
	} else if (msr == MSR_MTRRdefType) {
		if (data & ~0xcff)
			return false;
		return FUNC5(data & 0xff);
	} else if (msr >= MSR_MTRRfix64K_00000 && msr <= MSR_MTRRfix4K_F8000) {
		for (i = 0; i < 8 ; i++)
			if (!FUNC5((data >> (i * 8)) & 0xff))
				return false;
		return true;
	}

	/* variable MTRRs */
	FUNC0(!(msr >= 0x200 && msr < 0x200 + 2 * KVM_NR_VAR_MTRR));

	mask = (~0ULL) << FUNC1(vcpu);
	if ((msr & 1) == 0) {
		/* MTRR base */
		if (!FUNC5(data & 0xff))
			return false;
		mask |= 0xf00;
	} else
		/* MTRR mask */
		mask |= 0x7ff;
	if (data & mask) {
		FUNC2(vcpu, 0);
		return false;
	}

	return true;
}