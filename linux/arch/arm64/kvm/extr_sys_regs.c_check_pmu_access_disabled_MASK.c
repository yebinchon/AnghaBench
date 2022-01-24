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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMUSERENR_EL0 ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu, u64 flags)
{
	u64 reg = FUNC0(vcpu, PMUSERENR_EL0);
	bool enabled = (reg & flags) || FUNC2(vcpu);

	if (!enabled)
		FUNC1(vcpu);

	return !enabled;
}