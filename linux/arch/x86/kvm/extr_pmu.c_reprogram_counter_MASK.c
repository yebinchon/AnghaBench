#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct kvm_pmu {int /*<<< orphan*/  fixed_ctr_ctrl; } ;
struct kvm_pmc {int /*<<< orphan*/  eventsel; } ;
struct TYPE_4__ {TYPE_1__* pmu_ops; } ;
struct TYPE_3__ {struct kvm_pmc* (* pmc_idx_to_pmc ) (struct kvm_pmu*,int) ;} ;

/* Variables and functions */
 int INTEL_PMC_IDX_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* kvm_x86_ops ; 
 scalar_t__ FUNC1 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pmc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pmc*,int /*<<< orphan*/ ) ; 
 struct kvm_pmc* FUNC4 (struct kvm_pmu*,int) ; 

void FUNC5(struct kvm_pmu *pmu, int pmc_idx)
{
	struct kvm_pmc *pmc = kvm_x86_ops->pmu_ops->pmc_idx_to_pmc(pmu, pmc_idx);

	if (!pmc)
		return;

	if (FUNC1(pmc))
		FUNC3(pmc, pmc->eventsel);
	else {
		int idx = pmc_idx - INTEL_PMC_IDX_FIXED;
		u8 ctrl = FUNC0(pmu->fixed_ctr_ctrl, idx);

		FUNC2(pmc, ctrl, idx);
	}
}