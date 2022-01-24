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
typedef  int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int MIPS_GCTL0_GT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_coproc*,int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	u32 gctl0, compare, cause;

	gctl0 = FUNC3();
	if (gctl0 & MIPS_GCTL0_GT) {
		/* disable guest use of hard timer */
		FUNC6(gctl0 & ~MIPS_GCTL0_GT);

		/* save hard timer state */
		FUNC0(vcpu, &compare, &cause);
	} else {
		compare = FUNC5();
		cause = FUNC4();
	}

	/* save timer-related state to VCPU context */
	FUNC1(cop0, cause);
	FUNC2(cop0, compare);
}