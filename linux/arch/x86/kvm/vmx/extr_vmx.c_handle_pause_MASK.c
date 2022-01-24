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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	if (!FUNC1(vcpu->kvm))
		FUNC0(vcpu);

	/*
	 * Intel sdm vol3 ch-25.1.3 says: The "PAUSE-loop exiting"
	 * VM-execution control is ignored if CPL > 0. OTOH, KVM
	 * never set PAUSE_EXITING and just set PLE if supported,
	 * so the vcpu must be CPL=0 if it gets a PAUSE exit.
	 */
	FUNC3(vcpu, true);
	return FUNC2(vcpu);
}