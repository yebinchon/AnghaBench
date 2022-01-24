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
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	u32 gctl0;

	gctl0 = FUNC2();
	if (!(gctl0 & MIPS_GCTL0_GT) && FUNC1(vcpu)) {
		/* enable guest access to hard timer */
		FUNC5(gctl0 | MIPS_GCTL0_GT);

		FUNC0(vcpu, FUNC4(),
				       FUNC3());
	}
}