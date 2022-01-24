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
struct TYPE_2__ {int /*<<< orphan*/  enabled_gmap; scalar_t__ cputm_enabled; } ;
struct kvm_vcpu {int cpu; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSTAT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	vcpu->cpu = -1;
	if (vcpu->arch.cputm_enabled && !FUNC3(vcpu))
		FUNC0(vcpu);
	FUNC4(vcpu, CPUSTAT_RUNNING);
	vcpu->arch.enabled_gmap = FUNC2();
	FUNC1(vcpu->arch.enabled_gmap);

}