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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_TYPE_COUNTER ; 
 int /*<<< orphan*/  PMU_TYPE_EVNTSEL ; 
 scalar_t__ FUNC0 (struct kvm_pmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_pmu* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC2(struct kvm_vcpu *vcpu, u32 msr)
{
	struct kvm_pmu *pmu = FUNC1(vcpu);
	int ret = false;

	ret = FUNC0(pmu, msr, PMU_TYPE_COUNTER) ||
		FUNC0(pmu, msr, PMU_TYPE_EVNTSEL);

	return ret;
}