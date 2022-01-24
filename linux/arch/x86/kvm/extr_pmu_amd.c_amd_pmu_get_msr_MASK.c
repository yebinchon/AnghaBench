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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int dummy; } ;
struct kvm_pmc {int /*<<< orphan*/  eventsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_TYPE_COUNTER ; 
 int /*<<< orphan*/  PMU_TYPE_EVNTSEL ; 
 struct kvm_pmc* FUNC0 (struct kvm_pmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pmc*) ; 
 struct kvm_pmu* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
	struct kvm_pmu *pmu = FUNC2(vcpu);
	struct kvm_pmc *pmc;

	/* MSR_PERFCTRn */
	pmc = FUNC0(pmu, msr, PMU_TYPE_COUNTER);
	if (pmc) {
		*data = FUNC1(pmc);
		return 0;
	}
	/* MSR_EVNTSELn */
	pmc = FUNC0(pmu, msr, PMU_TYPE_EVNTSEL);
	if (pmc) {
		*data = pmc->eventsel;
		return 0;
	}

	return 1;
}