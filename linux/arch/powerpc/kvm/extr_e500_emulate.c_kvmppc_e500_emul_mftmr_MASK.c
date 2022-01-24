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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 scalar_t__ TMRN_TMCFG0 ; 
 int TMRN_TMCFG0_NATHRD_SHIFT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,int) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, unsigned int inst,
				  int rt)
{
	/* Expose one thread per vcpu */
	if (FUNC0(inst) == TMRN_TMCFG0) {
		FUNC1(vcpu, rt,
			       1 | (1 << TMRN_TMCFG0_NATHRD_SHIFT));
		return EMULATE_DONE;
	}

	return EMULATE_FAIL;
}