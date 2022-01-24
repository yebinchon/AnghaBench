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
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  maar; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long MIPS_MAARI_INDEX ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, unsigned long val)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;

	val &= MIPS_MAARI_INDEX;
	if (val == MIPS_MAARI_INDEX)
		FUNC1(cop0, FUNC0(vcpu->arch.maar) - 1);
	else if (val < FUNC0(vcpu->arch.maar))
		FUNC1(cop0, val);
}