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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int MIPS_GCTL0_GT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	u32 gctl0, compare, cause;

	FUNC2();
	gctl0 = FUNC4();
	if (gctl0 & MIPS_GCTL0_GT) {
		/* disable guest use of timer */
		FUNC5(gctl0 & ~MIPS_GCTL0_GT);

		/* switch to soft timer */
		FUNC1(vcpu, &compare, &cause);

		/* leave soft timer in usable state */
		FUNC0(vcpu, compare, cause);
	}
	FUNC3();
}