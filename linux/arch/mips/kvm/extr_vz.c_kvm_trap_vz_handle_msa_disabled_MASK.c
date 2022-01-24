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
struct TYPE_2__ {int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm_run* run; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int KVM_MIPS_AUX_MSA ; 
 int MIPS_CONF5_MSAEN ; 
 int RESUME_GUEST ; 
 int RESUME_HOST ; 
 int ST0_CU1 ; 
 int ST0_FR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm_run *run = vcpu->run;

	/*
	 * If MSA not present or not exposed to guest or FR=0, the MSA operation
	 * should have been treated as a reserved instruction!
	 * Same if CU1=1, FR=0.
	 * If MSA already in use, we shouldn't get this at all.
	 */
	if (!FUNC0(&vcpu->arch) ||
	    (FUNC3() & (ST0_CU1 | ST0_FR)) == ST0_CU1 ||
	    !(FUNC2() & MIPS_CONF5_MSAEN) ||
	    vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
		run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		return RESUME_HOST;
	}

	FUNC1(vcpu);

	return RESUME_GUEST;
}