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
typedef  int u32 ;
struct kvm_mtrr {int /*<<< orphan*/ * var_ranges; } ;
struct TYPE_2__ {struct kvm_mtrr mtrr_state; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
typedef  int gfn_t ;

/* Variables and functions */
 int MSR_IA32_CR_PAT ; 
 int MSR_MTRRdefType ; 
 scalar_t__ FUNC0 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_mtrr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_mtrr*) ; 
 int /*<<< orphan*/  tdp_enabled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu, u32 msr)
{
	struct kvm_mtrr *mtrr_state = &vcpu->arch.mtrr_state;
	gfn_t start, end;
	int index;

	if (msr == MSR_IA32_CR_PAT || !tdp_enabled ||
	      !FUNC3(vcpu->kvm))
		return;

	if (!FUNC5(mtrr_state) && msr != MSR_MTRRdefType)
		return;

	/* fixed MTRRs. */
	if (FUNC0(msr, &start, &end)) {
		if (!FUNC1(mtrr_state))
			return;
	} else if (msr == MSR_MTRRdefType) {
		start = 0x0;
		end = ~0ULL;
	} else {
		/* variable range MTRRs. */
		index = (msr - 0x200) / 2;
		FUNC6(&mtrr_state->var_ranges[index], &start, &end);
	}

	FUNC4(vcpu->kvm, FUNC2(start), FUNC2(end));
}