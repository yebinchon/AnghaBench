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
struct kvm_pmu {int fixed_ctr_ctrl; int global_status; int global_ctrl; int global_ovf_ctrl; int* counter_bitmask; } ;
struct kvm_pmc {int eventsel; } ;

/* Variables and functions */
 size_t KVM_PMC_FIXED ; 
 size_t KVM_PMC_GP ; 
#define  MSR_CORE_PERF_FIXED_CTR_CTRL 131 
#define  MSR_CORE_PERF_GLOBAL_CTRL 130 
#define  MSR_CORE_PERF_GLOBAL_OVF_CTRL 129 
#define  MSR_CORE_PERF_GLOBAL_STATUS 128 
 int /*<<< orphan*/  MSR_IA32_PERFCTR0 ; 
 int /*<<< orphan*/  MSR_P6_EVNTSEL0 ; 
 struct kvm_pmc* FUNC0 (struct kvm_pmu*,int) ; 
 struct kvm_pmc* FUNC1 (struct kvm_pmu*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_pmc*) ; 
 struct kvm_pmu* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
	struct kvm_pmu *pmu = FUNC3(vcpu);
	struct kvm_pmc *pmc;

	switch (msr) {
	case MSR_CORE_PERF_FIXED_CTR_CTRL:
		*data = pmu->fixed_ctr_ctrl;
		return 0;
	case MSR_CORE_PERF_GLOBAL_STATUS:
		*data = pmu->global_status;
		return 0;
	case MSR_CORE_PERF_GLOBAL_CTRL:
		*data = pmu->global_ctrl;
		return 0;
	case MSR_CORE_PERF_GLOBAL_OVF_CTRL:
		*data = pmu->global_ovf_ctrl;
		return 0;
	default:
		if ((pmc = FUNC1(pmu, msr, MSR_IA32_PERFCTR0))) {
			u64 val = FUNC2(pmc);
			*data = val & pmu->counter_bitmask[KVM_PMC_GP];
			return 0;
		} else if ((pmc = FUNC0(pmu, msr))) {
			u64 val = FUNC2(pmc);
			*data = val & pmu->counter_bitmask[KVM_PMC_FIXED];
			return 0;
		} else if ((pmc = FUNC1(pmu, msr, MSR_P6_EVNTSEL0))) {
			*data = pmc->eventsel;
			return 0;
		}
	}

	return 1;
}