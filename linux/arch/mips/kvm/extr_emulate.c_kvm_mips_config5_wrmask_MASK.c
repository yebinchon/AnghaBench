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
struct kvm_vcpu {int /*<<< orphan*/  arch; } ;

/* Variables and functions */
 unsigned int MIPS_CONF5_FRE ; 
 unsigned int MIPS_CONF5_MSAEN ; 
 scalar_t__ cpu_has_fre ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

unsigned int FUNC2(struct kvm_vcpu *vcpu)
{
	unsigned int mask = 0;

	/* Permit MSAEn changes if MSA supported and enabled */
	if (FUNC1(&vcpu->arch))
		mask |= MIPS_CONF5_MSAEN;

	/*
	 * Permit guest FPU mode changes if FPU is enabled and the relevant
	 * feature exists according to FIR register.
	 */
	if (FUNC0(&vcpu->arch)) {
		if (cpu_has_fre)
			mask |= MIPS_CONF5_FRE;
		/* We don't support UFR or UFE */
	}

	return mask;
}